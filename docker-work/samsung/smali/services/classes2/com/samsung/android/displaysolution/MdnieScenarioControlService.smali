.class public Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.super Ljava/lang/Object;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field public static final DISPLAY_COLOR_MANGED:I = 0x0

.field public static final DISPLAY_COLOR_UNMANGED:I = 0x1

.field public static final MSC_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field public static final PERSISTENT_PROPERTY_AMBIENT_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.ambient_brightness"

.field public static final PERSISTENT_PROPERTY_DISPLAY_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.display_brightness"

.field public static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field public static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field public static final TAG:Ljava/lang/String; = "MdnieScenarioControlService"


# instance fields
.field public ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

.field public ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

.field public ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

.field public ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

.field public ACTION_BURN_IN_PREVENTION_FIRST_MILLIS:I

.field public ACTION_BURN_IN_PREVENTION_MILLIS:I

.field public ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

.field public ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

.field public ACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS:I

.field public ACTION_GAME_BURN_IN_PREVENTION_MILLIS:I

.field public final ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

.field public ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

.field public final ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

.field public ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

.field public final ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

.field public ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

.field public final ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

.field public ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

.field public ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

.field public final ACTION_PANEL_COLLAPSED:Ljava/lang/String;

.field public final ACTION_PANEL_EXPANDED:Ljava/lang/String;

.field public ACTION_PIXEL_SELF_MOVE_DEBOUNCE_MILLIS:I

.field public ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

.field public final ACTION_USER_ACTIVITY_SCREEN_DREAM:Ljava/lang/String;

.field public ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

.field public ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

.field public ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

.field public ANDROID_APP_LAUNCHER:[Ljava/lang/String;

.field public AUTO_CURRENT_LIMIT_VERSION:I

.field public BRIGHTNESS_DECREASE_STEP:I

.field public BROWSER_BRIGHTNESS_DECREASE_SUPPORT_VALUE:I

.field public BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

.field public BURN_IN_PREVENTION_SUPPORT_VALUE:I

.field public BURN_IN_STEP:I

.field public BurnInPackageName:Ljava/lang/String;

.field public CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field public CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field public DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

.field public final DEBUG:Z

.field public DMB_APP_LAUNCHER:[Ljava/lang/String;

.field public DOU_BRIGHTNESS_STANDARD_VALUE:I

.field public EBOOK_APP_LAUNCHER:[Ljava/lang/String;

.field public EMAIL_APP_LAUNCHER:[Ljava/lang/String;

.field public EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

.field public EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

.field public EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

.field public EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

.field public FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

.field public FrontPackageName:Ljava/lang/String;

.field public GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field public GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

.field public GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

.field public GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field public GALLERY_APP_PACKAGENAME:Ljava/lang/String;

.field public GET_SYSTEM_SERVICES_MILLIS:I

.field public final HIGH_BRIGHTNESS_MODE_PMS_ENTER:Ljava/lang/String;

.field public IS_CAMERA_APP_DEBOUNCE_MILLIS:I

.field public IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

.field public LUX_VALUE:Ljava/lang/String;

.field public final MSG_BROWSER_BRIGHTNESS_DECREASE_OFF:I

.field public final MSG_BROWSER_BRIGHTNESS_DECREASE_ON:I

.field public final MSG_BURN_IN_PREVENTION_OFF:I

.field public final MSG_BURN_IN_PREVENTION_ON:I

.field public final MSG_CHECK_MULTIWINDOW:I

.field public final MSG_CONTROL_AUTO_CURRENT_LIMIT_v2:I

.field public final MSG_CONTROL_AUTO_CURRENT_LIMIT_v4:I

.field public final MSG_FOREGROUND_APP:I

.field public final MSG_GET_ON_PIXEL_RATIO_VALUE:I

.field public final MSG_GET_SYSTEM_SERVICES:I

.field public final MSG_PIXEL_SELF_MOVE_OFF:I

.field public final MSG_PIXEL_SELF_MOVE_ON:I

.field public final MSG_RESCAN_FOREGROUND_APP:I

.field public final MSG_SET_BROWSER_MODE:I

.field public final MSG_SET_CAMERA_MODE:I

.field public final MSG_SET_DMB_MODE:I

.field public final MSG_SET_EBOOK_MODE:I

.field public final MSG_SET_EMAIL_MODE:I

.field public final MSG_SET_GALLERY_MODE:I

.field public final MSG_SET_GALLERY_OUT_MODE:I

.field public final MSG_SET_SAMSUNG_VIDEO_MODE:I

.field public final MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

.field public final MSG_SET_SNS_MODE:I

.field public final MSG_SET_UI_MODE:I

.field public final MSG_SET_VIDEO_MODE:I

.field public final MSG_SET_VIDEO_OPTION_MODE:I

.field public final MSG_WRITE_DATABASE_VIDEO_ENHANCER_LIST:I

.field public ON_PIXEL_RATIO_PATH:Ljava/lang/String;

.field public OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

.field public PIXEL_MOVE_PATTERN:I

.field public PIXEL_SELF_MOVE_MILLIS:I

.field public PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

.field public READING_LUX_PATH:Ljava/lang/String;

.field public READING_LUX_SUB_PATH:Ljava/lang/String;

.field public READING_SCENARIO_PATH:Ljava/lang/String;

.field public ROUTE_TYPE_REMOTE_DISPLAY:I

.field public SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field public SCENARIO_VALUE:Ljava/lang/String;

.field public final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field public final SCREEN_MODE_SETTING:Ljava/lang/String;

.field public SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

.field public final SELF_MOVE_DISABLE_SETTING:Ljava/lang/String;

.field public SNS_APP_LAUNCHER:[Ljava/lang/String;

.field public SUB_LUX_VALUE:Ljava/lang/String;

.field public SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field public SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field public VIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field public WRITE_HDR_PATH:Ljava/lang/String;

.field public WRITE_HDR_SUB_PATH:Ljava/lang/String;

.field public WRITE_HDR_TUNABLES_PATH:Ljava/lang/String;

.field public WRITE_PANEL_DIA:Ljava/lang/String;

.field public eventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field public isHDMIConnected:Z

.field public isLockScreenOn:Z

.field public mAclCompensationState:Z

.field public mAclDimmingArray:[Ljava/lang/String;

.field public mAclDimmingFunction:Z

.field public mAclOffEnabled:Z

.field public mAclPreviewState:Z

.field public mAclState:Z

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mAdaptiveScreenModeEnabled:Z

.field public mAppLaunchStateInDatabase:I

.field public mAutoBrightnessMode:Z

.field public mAutoCurrentLimitOffState:Z

.field public mBrowserAppLauncher:Z

.field public mBrowserBrightnessArray:[I

.field public mBrowserBrightnessDecreaseEnabled:Z

.field public mBrowserBrightnessDefault:I

.field public mBrowserBrightnessStringArray:[Ljava/lang/String;

.field public mBrowserScenarioEnabled:Z

.field public mBurnInDisableAppEnabled:Z

.field public mBurnInPreventionACL:Z

.field public mBurnInPreventionEnabled:Z

.field public mCameraScenarioEnabled:Z

.field public mColorBlindEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

.field public mDMBScenarioEnabled:Z

.field public mDayOfUseSupportAppState:Z

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mDeviceProvisioned:Z

.field public mDexModeState:Z

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field public mEBookScenarioIntented:Z

.field public mEbookScenarioEnabled:Z

.field public mEmailScenarioEnabled:Z

.field public mEnableCondition:Z

.field public mEyeComfortScaleAppEnabled:Z

.field public mGalleryAppLauncher:Z

.field public mGalleryAppState:Z

.field public mGalleryOptionScenarioEnabled:Z

.field public mGalleryScenarioEnabled:Z

.field public mGameAppLauncher:Z

.field public mGameModeLauncher:Z

.field public mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mHdrEffectEnabled:Z

.field public mHighBrightnessModeEnabled:Z

.field public mHighDynamicRangeEnabled:Z

.field public mIActivityManager:Landroid/app/IActivityManager;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mIsFromCamera:Z

.field public mKeyGuardManager:Landroid/app/KeyguardManager;

.field public mLastUserInputDuration:J

.field public mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public mMediaResourceUsed:Z

.field public mMediaRouterManager:Landroid/media/MediaRouter;

.field public mMultiWindowOn:Z

.field public mNegativeColorEnabled:Z

.field public mNotiManager:Landroid/app/NotificationManager;

.field public final mNumberBrowserBrightnessFactor:I

.field public mOverheatControlSupportAppState:Z

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public mPlatformBrightnessValue:I

.field public mPolicyVersion:I

.field public mPowerSavingModeEnabled:Z

.field public mProcessObserver:Landroid/app/IProcessObserver;

.field public mQuickPanelState:I

.field public mSNSScenarioEnabled:Z

.field public mSVideoAppLauncher:Z

.field public mSVideoOptionScenarioEnabled:Z

.field public mSVideoScenarioEnabled:Z

.field public mSamsungVideoAppState:Z

.field public mScreenCurtainEnabled:Z

.field public mScreenOffTomeoutAbnormal:Z

.field public mScreenStateOn:Z

.field public mScreenWatchingReceiver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

.field public mSelfMoveDisabled:Z

.field public mSelfMoveOffAppEnabled:Z

.field public mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field public mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field public mSettingCondition:Z

.field public mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

.field public mStatusbarManager:Landroid/app/StatusBarManager;

.field public mUIScenarioEnabled:Z

.field public mUseEyeComfortSolutionServiceConfig:Z

.field public mUseMdnieScenarioControlConfig:Z

.field public mUsePixelSelfMoveConfig:Z

.field public mUseScaleFactorState:Z

.field public mUserActivityStatus:I

.field public mVideoEnd:Z

.field public mVideoEndNotUI:Z

.field public mVideoEnhacnerEnabled:Z

.field public mVideoModeCheck:Z

.field public mVideoScenarioEnabled:Z

.field public mWindowDivideOn:Z

.field public mWorkingCondition:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetACTION_BURN_IN_PREVENTION_FIRST_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_FIRST_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAUTO_CURRENT_LIMIT_VERSION(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetBurnInPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BurnInPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetFOREGROUND_RESCAN_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetGET_SYSTEM_SERVICES_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetPIXEL_SELF_MOVE_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisLockScreenOn(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAclCompensationState(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAclOffEnabled(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoBrightnessMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBurnInPreventionEnabled(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGameAppLauncher(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighBrightnessModeEnabled(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyGuardManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMdnieManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaRouterManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/media/MediaRouter;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemDisplaySolutionManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsePixelSelfMoveConfig(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisLockScreenOn(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAclCompensationState(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAclOffEnabled(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/app/ActivityManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDexModeState(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmGalleryAppState(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmGameAppLauncher(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmKeyGuardManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/app/KeyguardManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuickPanelState(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenStateOn(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserActivityStatus(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVideoEnd(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVideoModeCheck(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcontrolAclValue_v2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->controlAclValue_v2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcontrolAclValue_v4(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->controlAclValue_v4()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentOpr(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getCurrentOpr()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSystemServices(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getSystemServices()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetting_autocurrentlimit_state(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmonitorForegroundActivity(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->monitorForegroundActivity(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpixel_self_move(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pixel_self_move(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_off_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_on_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAclMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZI)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBrowserMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrowserMode(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCameraMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraMode(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDMBMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDMBMode(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEbookMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEbookMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEmailMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEmailMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetGalleryMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGalleryMode(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSNSMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSNSMode(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSVideoOptionMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoOptionMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUIMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoMode(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteVideoEnhancerListInDataBase(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->writeVideoEnhancerListInDataBase()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteVideoEnhancerListInDataBase2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->writeVideoEnhancerListInDataBase2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DEBUG:Z

    const/4 v2, 0x0

    .line 109
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_FOREGROUND_APP:I

    const/4 v3, 0x1

    .line 110
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_RESCAN_FOREGROUND_APP:I

    const/4 v4, 0x2

    .line 111
    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_UI_MODE:I

    const/4 v5, 0x3

    .line 112
    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_BROWSER_MODE:I

    const/4 v5, 0x4

    .line 113
    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GALLERY_MODE:I

    const/4 v6, 0x5

    .line 114
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_CAMERA_MODE:I

    const/4 v6, 0x6

    .line 115
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_VIDEO_MODE:I

    const/4 v6, 0x7

    .line 116
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_MODE:I

    const/16 v6, 0x8

    .line 117
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

    const/16 v6, 0x9

    .line 118
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_EMAIL_MODE:I

    const/16 v6, 0xa

    .line 119
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_EBOOK_MODE:I

    const/16 v6, 0xb

    .line 120
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_DMB_MODE:I

    const/16 v6, 0xc

    .line 121
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SNS_MODE:I

    const/16 v6, 0xd

    .line 122
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GALLERY_OUT_MODE:I

    const/16 v6, 0xe

    .line 123
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_VIDEO_OPTION_MODE:I

    const/16 v6, 0xf

    .line 124
    iput v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_GET_SYSTEM_SERVICES:I

    const/16 v7, 0x10

    .line 125
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_CHECK_MULTIWINDOW:I

    const/16 v7, 0x11

    .line 126
    iput v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_PIXEL_SELF_MOVE_ON:I

    const/16 v8, 0x12

    .line 127
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_PIXEL_SELF_MOVE_OFF:I

    const/16 v8, 0x13

    .line 128
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BURN_IN_PREVENTION_ON:I

    const/16 v8, 0x14

    .line 129
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BURN_IN_PREVENTION_OFF:I

    const/16 v8, 0x15

    .line 130
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BROWSER_BRIGHTNESS_DECREASE_ON:I

    const/16 v8, 0x16

    .line 131
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BROWSER_BRIGHTNESS_DECREASE_OFF:I

    const/16 v8, 0x17

    .line 132
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_GET_ON_PIXEL_RATIO_VALUE:I

    const/16 v8, 0x18

    .line 133
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_CONTROL_AUTO_CURRENT_LIMIT_v2:I

    const/16 v8, 0x19

    .line 134
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_CONTROL_AUTO_CURRENT_LIMIT_v4:I

    const/16 v8, 0x1a

    .line 135
    iput v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_WRITE_DATABASE_VIDEO_ENHANCER_LIST:I

    .line 137
    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNumberBrowserBrightnessFactor:I

    .line 139
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPlatformBrightnessValue:I

    .line 140
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    .line 141
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    .line 142
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 143
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 144
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BROWSER_BRIGHTNESS_DECREASE_SUPPORT_VALUE:I

    .line 145
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 146
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 147
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 148
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 149
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 150
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 151
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 152
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    .line 153
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 154
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 155
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    const v9, 0x116520

    .line 156
    iput v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_PIXEL_SELF_MOVE_DEBOUNCE_MILLIS:I

    const v9, 0xea60

    .line 157
    iput v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_FIRST_MILLIS:I

    .line 158
    iput v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_MILLIS:I

    .line 159
    iput v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS:I

    .line 160
    iput v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_MILLIS:I

    const v9, 0x124f80

    .line 161
    iput v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    const v9, 0x1d4c0

    .line 162
    iput v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

    .line 164
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    .line 165
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    const/16 v9, 0x1f40

    .line 166
    iput v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    const/16 v9, 0xbb8

    .line 167
    iput v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_MILLIS:I

    .line 168
    iput v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    .line 169
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    .line 170
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    .line 171
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    .line 172
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    .line 173
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPolicyVersion:I

    .line 174
    iput v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    .line 175
    iput v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    const-wide/16 v9, 0x0

    .line 178
    iput-wide v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    const-string/jumbo v5, "screen_mode_automatic_setting"

    .line 180
    iput-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string v9, "high_brightness_mode_pms_enter"

    .line 181
    iput-object v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HIGH_BRIGHTNESS_MODE_PMS_ENTER:Ljava/lang/String;

    const-string/jumbo v10, "self_move_disable_setting"

    .line 182
    iput-object v10, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_SETTING:Ljava/lang/String;

    const-string/jumbo v11, "screen_mode_setting"

    .line 183
    iput-object v11, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string v11, "ACTION_MOVIE_PLAYER_STATE_IN"

    .line 184
    iput-object v11, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

    const-string v12, "ACTION_MOVIE_PLAYER_STATE_OUT"

    .line 185
    iput-object v12, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

    const-string v13, "ACTION_GAME_MODE_STATE_IN"

    .line 186
    iput-object v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

    const-string v14, "ACTION_GAME_MODE_STATE_OUT"

    .line 187
    iput-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

    const-string v15, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    .line 188
    iput-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_USER_ACTIVITY_SCREEN_DREAM:Ljava/lang/String;

    const-string v7, "com.samsung.systemui.statusbar.EXPANDED"

    .line 189
    iput-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_PANEL_EXPANDED:Ljava/lang/String;

    const-string v6, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 190
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_PANEL_COLLAPSED:Ljava/lang/String;

    const-string v6, "/sys/class/mdnie/mdnie/scenario"

    .line 192
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/lcd/panel/lux"

    .line 193
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/lcd/panel1/lux"

    .line 194
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_SUB_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/lcd/panel/dia"

    .line 195
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_PANEL_DIA:Ljava/lang/String;

    const-string v6, "/sys/class/lcd/panel/adaptive_control"

    .line 196
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/mdnie/mdnie/hdr"

    .line 197
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/mdnie/mdnie1/hdr"

    .line 198
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_SUB_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/lcd/panel/self_move"

    .line 199
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    const-string v6, "/sys/class/sensors/light_sensor/copr_roix"

    .line 200
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ON_PIXEL_RATIO_PATH:Ljava/lang/String;

    const-string v6, "/sys/module/hdr_tunables/parameters/tm_override_enable"

    .line 201
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_TUNABLES_PATH:Ljava/lang/String;

    const-string v6, "com.sec.android.gallery3d"

    .line 202
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_PACKAGENAME:Ljava/lang/String;

    const/4 v6, 0x0

    .line 204
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 205
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 206
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    .line 207
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 208
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BurnInPackageName:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 210
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 211
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 212
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 213
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 214
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 215
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 216
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 217
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 218
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 219
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 220
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 221
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 222
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 223
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 224
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SNS_APP_LAUNCHER:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 226
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 227
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 228
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 229
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 231
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 232
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 234
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 235
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 236
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 237
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    .line 261
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 262
    iput-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 264
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    .line 265
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 266
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    .line 267
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 268
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 269
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 270
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 271
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 272
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 273
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWindowDivideOn:Z

    .line 274
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 275
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPowerSavingModeEnabled:Z

    .line 276
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDeviceProvisioned:Z

    .line 277
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 278
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    .line 279
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    .line 280
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    .line 281
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAdaptiveScreenModeEnabled:Z

    .line 282
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    .line 283
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEBookScenarioIntented:Z

    .line 284
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 285
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 286
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 287
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 288
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 289
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 290
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 291
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 292
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 293
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 294
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 295
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    .line 296
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    .line 297
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    .line 298
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    .line 299
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 300
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 301
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 302
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 303
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 304
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 305
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 306
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    .line 307
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHDMIConnected:Z

    .line 308
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    .line 309
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    .line 310
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    .line 311
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 312
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    .line 313
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 314
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    .line 315
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    .line 316
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    .line 317
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    .line 318
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 319
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    .line 320
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    .line 321
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 324
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 325
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    .line 326
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    .line 327
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 328
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    .line 329
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    .line 330
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    .line 624
    new-instance v4, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    invoke-direct {v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 935
    new-instance v4, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

    invoke-direct {v4, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->eventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 333
    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 335
    new-instance v4, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    invoke-direct {v4, v1}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 336
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 338
    new-instance v4, Landroid/os/HandlerThread;

    const-string v6, "MdnieScenarioControlServiceThread"

    invoke-direct {v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 339
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 340
    new-instance v4, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1110185

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x111019a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    .line 344
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v4, v6, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_281

    .line 345
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 347
    :cond_281
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107003b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070061

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107003e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107004f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107003d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070065

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070066

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070068

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070048

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070047

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070046

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107005f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SNS_APP_LAUNCHER:[Ljava/lang/String;

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070037

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070036

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070042

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107005e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070064

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107003c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

    .line 365
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107004d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107004a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107004b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x107004c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0047

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0057

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0016

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e009f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0018

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0019

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e001c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e001d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e001f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 379
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0020

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e001a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e001b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e011b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e001e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e00a4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e00a3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 387
    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x107008c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 391
    iput-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    move v1, v2

    .line 392
    :goto_48c
    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    array-length v6, v4

    if-ge v1, v6, :cond_4a6

    .line 393
    iget-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_48c

    .line 396
    :cond_4a6
    new-instance v1, Ljava/io/File;

    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4f5

    .line 397
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x107006c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingArray:[Ljava/lang/String;

    .line 398
    array-length v1, v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4c8

    .line 399
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    .line 400
    :cond_4c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAclDimmingFunction "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , array lenght : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingArray:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , AclVersion : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MdnieScenarioControlService"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_4f5
    new-instance v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    .line 403
    new-instance v1, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 405
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-string v4, "device_provisioned"

    .line 408
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "low_power"

    .line 409
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 410
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 411
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "screen_brightness"

    .line 412
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "screen_auto_brightness_adj"

    .line 413
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "screen_brightness_mode"

    .line 414
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v4, "high_contrast"

    .line 415
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v4, "lcd_curtain"

    .line 416
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v4, "color_blind"

    .line 417
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 418
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v4, "screen_off_timeout"

    .line 419
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 421
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 422
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 423
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 424
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    .line 425
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 433
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    iget-object v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver-IA;)V

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v21, v1

    invoke-virtual/range {v18 .. v23}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 437
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v4, v4

    add-long v4, v16, v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 440
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v1, :cond_5ff

    .line 441
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_MILLIS:I

    int-to-long v4, v4

    add-long v4, v16, v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_5ff
    const-string/jumbo v1, "sys.mdniecontrolservice.mscon"

    const-string v2, "false"

    .line 445
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    if-eqz v1, :cond_614

    const-string/jumbo v1, "sys.mdniecontrolservice.mscon"

    const-string/jumbo v2, "true"

    .line 448
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_614
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    const-string/jumbo v0, "persist.dm.passive.ambient_brightness"

    const-string v1, ""

    .line 453
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "500"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_633

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_638

    :cond_633
    const-string v2, "1000,1500"

    .line 454
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_638
    const-string/jumbo v0, "persist.dm.passive.display_brightness"

    .line 456
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "172"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_653

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "255"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_658

    :cond_653
    const-string v1, "255,85"

    .line 457
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_658
    return-void
.end method

.method public static sysfsWrite(Ljava/lang/String;I)Z
    .registers 5

    .line 2120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_38

    const/4 p0, 0x0

    .line 2124
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_24

    .line 2129
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 2130
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_22

    const/4 p0, 0x1

    return p0

    :catch_22
    move-exception p0

    goto :goto_2d

    :catch_24
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_2d

    :catch_28
    move-exception p1

    .line 2126
    :try_start_29
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_24

    return v1

    .line 2132
    :goto_2d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 2134
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 2136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    :goto_38
    return v1
.end method


# virtual methods
.method public final browser_brightness_decrease_function(I)V
    .registers 9

    .line 2472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2473
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v2, :cond_62

    const/4 v2, 0x1

    move v3, v2

    :goto_a
    add-int/lit8 v4, p1, 0x1

    if-ge v3, v4, :cond_62

    .line 2475
    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    if-ne v4, v3, :cond_5f

    .line 2476
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabled Browser Brightness Decrease Mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , MAX  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MdnieScenarioControlService"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "browser_brightness_on_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    if-ge v3, p1, :cond_5c

    .line 2479
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v4, 0x15

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2480
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

    int-to-long v5, v5

    add-long/2addr v0, v5

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    add-int/2addr v3, v2

    .line 2481
    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    goto :goto_5e

    .line 2483
    :cond_5c
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    :goto_5e
    return-void

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_62
    return-void
.end method

.method public browser_brightness_decrease_mode(Z)V
    .registers 12

    .line 2440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2441
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    if-nez v2, :cond_1e

    .line 2442
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_media_resource_info()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    .line 2443
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_platform_brightness_value()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    .line 2444
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v2, :cond_1e

    .line 2445
    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->semGetMotionIdleTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    .line 2447
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "browser_brightness_decrease_mode(), mBrowserBrightnessDecreaseEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mScreenStateOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mBrowserAppLauncher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mScreenOffTomeoutAbnormal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mUserActivityStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mMediaResourceUsed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mLastUserInputDuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , mBrowserBrightnessDefault : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mBrowserBrightnessArray : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MdnieScenarioControlService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x15

    const/4 v5, 0x1

    if-eqz p1, :cond_db

    .line 2448
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz p1, :cond_db

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    if-eqz p1, :cond_db

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    if-nez p1, :cond_a7

    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUserActivityStatus:I

    const/4 v6, 0x3

    if-ne p1, v6, :cond_db

    .line 2449
    :cond_a7
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaResourceUsed:Z

    const-wide/32 v6, 0x927c0

    if-nez p1, :cond_c4

    iget-wide v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_c4

    .line 2450
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget v1, v0, v4

    if-lt p1, v1, :cond_f2

    .line 2451
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 2452
    aget p1, v0, v5

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_function(I)V

    goto :goto_f2

    :cond_c4
    if-nez p1, :cond_cc

    .line 2455
    iget-wide v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mLastUserInputDuration:J

    cmp-long p1, v3, v6

    if-gtz p1, :cond_f2

    .line 2456
    :cond_cc
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2457
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    int-to-long v3, p0

    add-long/2addr v0, v3

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_f2

    .line 2461
    :cond_db
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    .line 2462
    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    const-string p1, "Disabled Browser Brightness Decrease Mode"

    .line 2463
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2465
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz p0, :cond_f2

    const-string p1, "browser_brightness_off"

    .line 2466
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    :cond_f2
    :goto_f2
    return-void
.end method

.method public burn_in_prevention_mode(Z)V
    .registers 10

    .line 2399
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2400
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_platform_brightness_value()I

    move-result v2

    .line 2401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "burn_in_prevention_mode(), enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBurnInDisableAppEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mAutoBrightnessMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mHighBrightnessModeEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mBurnInPreventionACL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , platform_brightness_value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , BURN_IN_PREVENTION_SUPPORT_VALUE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mBurnInPreventionEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , mGameAppLauncher : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MdnieScenarioControlService"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x13

    const/4 v5, 0x1

    if-eqz p1, :cond_ee

    .line 2402
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-eqz p1, :cond_ee

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez p1, :cond_ee

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    if-nez p1, :cond_ee

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    if-nez p1, :cond_ee

    .line 2403
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    if-lt v2, p1, :cond_106

    .line 2404
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    .line 2405
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BurnInPackageName:Ljava/lang/String;

    .line 2406
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz p1, :cond_106

    move p1, v5

    :goto_90
    const/16 v2, 0xb

    if-ge p1, v2, :cond_106

    .line 2408
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    if-ne v2, p1, :cond_eb

    .line 2409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enabled Burn-In Prevention Mode "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "burnin_prevention_on_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    const/16 v2, 0xa

    if-ge p1, v2, :cond_e8

    .line 2412
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2413
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    if-eqz v2, :cond_d9

    .line 2414
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_MILLIS:I

    int-to-long v6, v4

    add-long/2addr v0, v6

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_e4

    :cond_d9
    if-nez v2, :cond_e4

    .line 2416
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_MILLIS:I

    int-to-long v6, v4

    add-long/2addr v0, v6

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_e4
    :goto_e4
    add-int/2addr p1, v5

    .line 2418
    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    goto :goto_ea

    .line 2420
    :cond_e8
    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    :goto_ea
    return-void

    :cond_eb
    add-int/lit8 p1, p1, 0x1

    goto :goto_90

    :cond_ee
    const/4 p1, 0x0

    .line 2429
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    .line 2430
    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    const-string p1, "Disabled Burn-In Prevention Mode"

    .line 2431
    invoke-static {v4, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2433
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz p0, :cond_106

    const-string p1, "burnin_prevention_off"

    .line 2434
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    :cond_106
    return-void
.end method

.method public final controlAclValue_v2()V
    .registers 5

    .line 2531
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_89

    const-string v0, "MdnieScenarioControlService"

    .line 2533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlAclValue_v2 LUX_VALUE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mAclCompensationState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_5f

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v1, v0, :cond_5f

    .line 2535
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    if-nez v0, :cond_5c

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_5c

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-nez v0, :cond_5c

    .line 2536
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-nez v0, :cond_59

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    if-nez v0, :cond_59

    const/4 v0, 0x2

    .line 2537
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_89

    .line 2539
    :cond_59
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto :goto_89

    .line 2542
    :cond_5c
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto :goto_89

    .line 2544
    :cond_5f
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v1, v0, :cond_89

    .line 2545
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-nez v0, :cond_82

    .line 2546
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    if-nez v0, :cond_7f

    .line 2547
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_89

    .line 2549
    :cond_7f
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto :goto_89

    .line 2552
    :cond_82
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_85

    goto :goto_89

    :catch_85
    move-exception p0

    .line 2558
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_89
    :goto_89
    return-void
.end method

.method public final controlAclValue_v4()V
    .registers 8

    .line 2564
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    .line 2565
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_LUX_SUB_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    .line 2566
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_102

    const/4 v1, 0x2

    const-string v2, "MdnieScenarioControlService"

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eqz v0, :cond_a4

    :try_start_25
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_36

    goto/16 :goto_a4

    .line 2582
    :cond_36
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v6, 0x5

    if-ne v0, v6, :cond_106

    .line 2583
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_106

    .line 2584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "controlAclValue_v4 SUB_LUX_VALUE : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_86

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v4, v0, :cond_86

    .line 2586
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    if-nez v0, :cond_82

    .line 2587
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 2589
    :cond_82
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto/16 :goto_106

    .line 2590
    :cond_86
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SUB_LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v4, v0, :cond_106

    .line 2591
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    if-nez v0, :cond_a1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_a1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-nez v0, :cond_a1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    if-nez v0, :cond_a1

    .line 2592
    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 2594
    :cond_a1
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto :goto_106

    .line 2567
    :cond_a4
    :goto_a4
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_106

    .line 2568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "controlAclValue_v4 LUX_VALUE : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_e4

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v4, v0, :cond_e4

    .line 2570
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    if-nez v0, :cond_e1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_e1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-nez v0, :cond_e1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    if-nez v0, :cond_e1

    .line 2571
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 2573
    :cond_e1
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto :goto_106

    .line 2574
    :cond_e4
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LUX_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v4, v0, :cond_106

    .line 2575
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    if-nez v0, :cond_ff

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_ff

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-nez v0, :cond_ff

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    if-nez v0, :cond_ff

    .line 2576
    invoke-virtual {p0, v5, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 2578
    :cond_ff
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_101} :catch_102

    goto :goto_106

    :catch_102
    move-exception p0

    .line 2600
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_106
    :goto_106
    return-void
.end method

.method public findVideoEnhancerSettingState(Ljava/lang/String;)I
    .registers 2

    .line 2697
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getAppListRegistState(Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    .line 2774
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packagename = \'"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "MSCS_APP_LIST"

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 2776
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_33

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    if-eqz v0, :cond_32

    .line 2779
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_32
    return p0

    :catchall_33
    move-exception p0

    if-eqz v0, :cond_39

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2780
    :cond_39
    throw p0
.end method

.method public final getAppListRegistState(Ljava/util/List;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2741
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2743
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "packagename IN(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\'"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo p1, "packagename"

    .line 2744
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_56

    const/4 p1, 0x0

    .line 2746
    :try_start_2a
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "MSCS_APP_LIST"

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 2748
    :goto_38
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_49

    const/4 p0, 0x0

    .line 2749
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2750
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_4f

    goto :goto_38

    :cond_49
    if-eqz p1, :cond_5a

    .line 2754
    :try_start_4b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    :catchall_4f
    move-exception p0

    if-eqz p1, :cond_55

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2755
    :cond_55
    throw p0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    move-exception p0

    .line 2757
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5a
    :goto_5a
    return-object v0
.end method

.method public final getAppSettingState(Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    .line 2793
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packagename = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "MSCS_APP_LIST"

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 2795
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string/jumbo p1, "settingstate"

    .line 2796
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_42

    :cond_3a
    if-eqz v0, :cond_3f

    .line 2800
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2802
    :cond_3f
    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    return p0

    :catchall_42
    move-exception p0

    if-eqz v0, :cond_48

    .line 2800
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2801
    :cond_48
    throw p0
.end method

.method public final getCurrentOpr()V
    .registers 9

    .line 2494
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ON_PIXEL_RATIO_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ","

    const-string v2, "MdnieScenarioControlService"

    if-eqz v0, :cond_57

    const/4 v0, 0x0

    .line 2497
    :try_start_12
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ON_PIXEL_RATIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 2499
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_52

    .line 2501
    :try_start_22
    array-length v4, v3

    const/16 v5, 0xc

    if-ne v4, v5, :cond_58

    const/4 v4, 0x3

    move v6, v0

    move v5, v4

    :goto_2a
    const/4 v7, 0x6

    if-ge v5, v7, :cond_37

    .line 2503
    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_37
    if-lez v6, :cond_58

    .line 2506
    div-int/lit8 v0, v6, 0x3
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3b} :catch_52

    goto :goto_58

    :catch_3c
    move-exception v3

    .line 2511
    :try_start_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_51} :catch_52

    goto :goto_58

    :catch_52
    move-exception v3

    .line 2515
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_58

    :cond_57
    const/4 v0, -0x1

    .line 2520
    :cond_58
    :goto_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentOpr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mQuickPanelState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v2, :cond_a1

    .line 2522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickPanelState:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V

    :cond_a1
    return-void
.end method

.method public final getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 p0, 0x80

    new-array v0, p0, [B

    .line 2150
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, p0, :cond_12

    .line 2154
    aput-byte v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2156
    :cond_12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_9c

    const-string p0, "File Close error"

    const-string v4, "MdnieScenarioControlService"

    if-eqz p1, :cond_2b

    .line 2159
    :try_start_1f
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_28
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_2c

    :catchall_25
    move-exception p1

    goto/16 :goto_87

    :catch_28
    move-exception p1

    move-object v0, v3

    goto :goto_4e

    :cond_2b
    move-object p1, v3

    :goto_2c
    if-eqz p1, :cond_91

    .line 2162
    :try_start_2e
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_49
    .catchall {:try_start_2e .. :try_end_32} :catchall_45

    if-lez v1, :cond_3e

    .line 2164
    :try_start_34
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v2, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v3, v5

    .line 2166
    :cond_3e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_41} :catch_42
    .catchall {:try_start_34 .. :try_end_41} :catchall_45

    goto :goto_91

    :catch_42
    move-exception v0

    move v2, v1

    goto :goto_4a

    :catchall_45
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_87

    :catch_49
    move-exception v0

    :goto_4a
    move-object v8, v3

    move-object v3, p1

    move-object p1, v0

    move-object v0, v8

    .line 2169
    :goto_4e
    :try_start_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , in : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , value : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , length : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_4e .. :try_end_7d} :catchall_25

    if-eqz v3, :cond_9b

    .line 2174
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_9b

    .line 2176
    :catch_83
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    :goto_87
    if-eqz v3, :cond_90

    .line 2174
    :try_start_89
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_90

    .line 2176
    :catch_8d
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_90
    :goto_90
    throw p1

    :cond_91
    :goto_91
    if-eqz p1, :cond_9a

    .line 2174
    :try_start_93
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_9a

    .line 2176
    :catch_97
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    :goto_9a
    move-object v0, v3

    :cond_9b
    :goto_9b
    return-object v0

    :cond_9c
    return-object v3
.end method

.method public final getSystemServices()V
    .registers 8

    .line 2320
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActivityManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v2, "mDNIe"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMdnieManager : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v2, "media_router"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    .line 2325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaRouterManager : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v2, "input"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInputManager : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSemDisplaySolutionManager : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_c1

    goto :goto_cd

    .line 2349
    :cond_c1
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->registerProcessObserver()V

    const/4 v0, 0x1

    .line 2350
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    const-string p0, "Success to register all of the services system."

    .line 2351
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    .line 2344
    :cond_cd
    :goto_cd
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2345
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2346
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v5, p0

    add-long/2addr v2, v5

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    const-string p0, "Failure to register all of the services system."

    .line 2347
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e6
    return-void
.end method

.method public final getting_Hdmi_Connected()Z
    .registers 4

    .line 794
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_28

    .line 795
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    .line 798
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHDMIConnected:Z

    .line 799
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_39

    .line 800
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 801
    :goto_33
    array-length v2, v1

    if-ge v0, v2, :cond_39

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 806
    :cond_39
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHDMIConnected:Z

    return p0
.end method

.method public final getting_autocurrentlimit_state()Z
    .registers 2

    .line 810
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_a

    .line 811
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getAutoCurrentLimitOffModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    .line 813
    :cond_a
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclState:Z

    return p0
.end method

.method public final getting_knox_mode_enabled()Z
    .registers 3

    .line 789
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 790
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public final getting_media_resource_info()Z
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 753
    :try_start_2
    invoke-static {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 754
    invoke-virtual {v2, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMediaResourceInfo(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 755
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_12} :catch_17

    if-lez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1

    :catch_17
    const-string v0, "MdnieScenarioControlService"

    const-string v2, "failed to getMediaResourceInfo"

    .line 760
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    return v1
.end method

.method public final getting_platform_brightness_value()I
    .registers 5

    .line 767
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 769
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPlatformBrightnessValue:I

    return v0
.end method

.method public final getting_setting_value()Z
    .registers 7

    .line 774
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    move-result v0

    .line 775
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MdnieScenarioControlService"

    const-string v3, "hdr_effect"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_23

    const/4 v0, -0x2

    .line 778
    invoke-static {v1, v3, v5, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v4, v5

    :goto_1b
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    const-string v0, "Use Current User"

    .line 779
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 782
    :cond_23
    invoke-static {v1, v3, v5, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_2a

    goto :goto_2b

    :cond_2a
    move v4, v5

    :goto_2b
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    const-string v0, "Use Owner User"

    .line 783
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_32
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    return p0
.end method

.method public final insertDataUsage(Ljava/lang/String;)V
    .registers 5

    .line 2763
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "packagename"

    .line 2764
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2765
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "settingstate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2766
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppListRegistState(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_25

    .line 2767
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MSCS_APP_LIST"

    invoke-virtual {p1, p0, v0, v1}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public isHighDynamicRangeModeState(Z)V
    .registers 2

    .line 2526
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    return-void
.end method

.method public final mdnie_reset()V
    .registers 2

    const/4 v0, 0x0

    .line 2086
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 2087
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 2088
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    .line 2089
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    .line 2090
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 2091
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    .line 2092
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 2093
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 2094
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 2095
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 2096
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 2097
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 2098
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 2099
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 2100
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    return-void
.end method

.method public final monitorForegroundActivity(Ljava/lang/String;II)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 970
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    .line 971
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    .line 972
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    .line 974
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_17

    .line 975
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    goto :goto_19

    .line 977
    :cond_17
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    :goto_19
    move v3, v2

    .line 980
    :goto_1a
    iget-object v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_2c

    .line 981
    aget-object v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    move v3, v4

    goto :goto_2d

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2c
    move v3, v2

    :goto_2d
    move v5, v2

    .line 986
    :goto_2e
    iget-object v6, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_40

    .line 987
    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3d

    move v5, v4

    goto :goto_41

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_40
    move v5, v2

    :goto_41
    move v6, v2

    .line 992
    :goto_42
    iget-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_54

    .line 993
    aget-object v7, v7, v6

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_51

    move v5, v4

    goto :goto_54

    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    :cond_54
    :goto_54
    move v6, v2

    .line 998
    :goto_55
    iget-object v7, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_67

    .line 999
    aget-object v7, v7, v6

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_64

    move v6, v4

    goto :goto_68

    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    :cond_67
    move v6, v2

    :goto_68
    move v7, v2

    .line 1004
    :goto_69
    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    array-length v9, v8

    if-ge v7, v9, :cond_7b

    .line 1005
    aget-object v8, v8, v7

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_78

    move v7, v4

    goto :goto_7c

    :cond_78
    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    :cond_7b
    move v7, v2

    :goto_7c
    move v8, v2

    .line 1010
    :goto_7d
    iget-object v9, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v10, v9

    if-ge v8, v10, :cond_8f

    .line 1011
    aget-object v9, v9, v8

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8c

    move v8, v4

    goto :goto_90

    :cond_8c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7d

    :cond_8f
    move v8, v2

    :goto_90
    move v9, v2

    .line 1016
    :goto_91
    iget-object v10, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    array-length v11, v10

    if-ge v9, v11, :cond_a3

    .line 1017
    aget-object v10, v10, v9

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a0

    move v9, v4

    goto :goto_a4

    :cond_a0
    add-int/lit8 v9, v9, 0x1

    goto :goto_91

    :cond_a3
    move v9, v2

    :goto_a4
    move v10, v2

    .line 1022
    :goto_a5
    iget-object v11, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v12, v11

    if-ge v10, v12, :cond_b7

    .line 1023
    aget-object v11, v11, v10

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b4

    move v10, v4

    goto :goto_b8

    :cond_b4
    add-int/lit8 v10, v10, 0x1

    goto :goto_a5

    :cond_b7
    move v10, v2

    :goto_b8
    move v11, v2

    .line 1028
    :goto_b9
    iget-object v12, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    array-length v13, v12

    if-ge v11, v13, :cond_cb

    .line 1029
    aget-object v12, v12, v11

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c8

    move v11, v4

    goto :goto_cc

    :cond_c8
    add-int/lit8 v11, v11, 0x1

    goto :goto_b9

    :cond_cb
    move v11, v2

    :goto_cc
    move v12, v2

    .line 1034
    :goto_cd
    iget-object v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    array-length v14, v13

    if-ge v12, v14, :cond_df

    .line 1035
    aget-object v13, v13, v12

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_dc

    move v12, v4

    goto :goto_e0

    :cond_dc
    add-int/lit8 v12, v12, 0x1

    goto :goto_cd

    :cond_df
    move v12, v2

    :goto_e0
    move v13, v2

    .line 1040
    :goto_e1
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v14

    if-ge v13, v15, :cond_f3

    .line 1041
    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f0

    move v13, v4

    goto :goto_f4

    :cond_f0
    add-int/lit8 v13, v13, 0x1

    goto :goto_e1

    :cond_f3
    move v13, v2

    :goto_f4
    move v14, v2

    .line 1046
    :goto_f5
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SNS_APP_LAUNCHER:[Ljava/lang/String;

    array-length v2, v15

    if-ge v14, v2, :cond_108

    .line 1047
    aget-object v2, v15, v14

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_104

    move v2, v4

    goto :goto_109

    :cond_104
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto :goto_f5

    :cond_108
    const/4 v2, 0x0

    :goto_109
    const/4 v14, 0x0

    .line 1053
    :goto_10a
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

    array-length v4, v15

    if-ge v14, v4, :cond_12f

    .line 1054
    aget-object v4, v15, v14

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12b

    .line 1055
    iget-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v4, :cond_12b

    const/4 v4, 0x1

    .line 1056
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    .line 1057
    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v14, 0x12

    invoke-virtual {v4, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1058
    iget-object v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_12f

    :cond_12b
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_10a

    :cond_12f
    :goto_12f
    const/4 v4, 0x0

    .line 1064
    :goto_130
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v4, v15, :cond_144

    .line 1065
    aget-object v14, v14, v4

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_141

    const/4 v14, 0x1

    .line 1066
    iput-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    goto :goto_144

    :cond_141
    add-int/lit8 v4, v4, 0x1

    goto :goto_130

    :cond_144
    :goto_144
    const/4 v4, 0x0

    .line 1071
    :goto_145
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_BLACKLIST_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v4, v15, :cond_162

    .line 1072
    aget-object v14, v14, v4

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_15f

    .line 1073
    iget-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v4, :cond_162

    const/4 v4, 0x1

    .line 1074
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1075
    invoke-virtual {v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEyeComfortScaleFactor(F)V

    goto :goto_162

    :cond_15f
    add-int/lit8 v4, v4, 0x1

    goto :goto_145

    :cond_162
    :goto_162
    const/4 v4, 0x0

    .line 1081
    :goto_163
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_05_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v4, v15, :cond_181

    .line 1082
    aget-object v14, v14, v4

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_17e

    .line 1083
    iget-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v4, :cond_181

    const/4 v4, 0x1

    .line 1084
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    const v4, 0x3f866666    # 1.05f

    .line 1085
    invoke-virtual {v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEyeComfortScaleFactor(F)V

    goto :goto_181

    :cond_17e
    add-int/lit8 v4, v4, 0x1

    goto :goto_163

    :cond_181
    :goto_181
    const/4 v4, 0x0

    .line 1091
    :goto_182
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_10_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v4, v15, :cond_1a0

    .line 1092
    aget-object v14, v14, v4

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_19d

    .line 1093
    iget-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v4, :cond_1a0

    const/4 v4, 0x1

    .line 1094
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    const v4, 0x3f8ccccd    # 1.1f

    .line 1095
    invoke-virtual {v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEyeComfortScaleFactor(F)V

    goto :goto_1a0

    :cond_19d
    add-int/lit8 v4, v4, 0x1

    goto :goto_182

    :cond_1a0
    :goto_1a0
    const/4 v4, 0x0

    .line 1101
    :goto_1a1
    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EYE_COMFORT_1_15_APP_LIST:[Ljava/lang/String;

    array-length v15, v14

    if-ge v4, v15, :cond_1bf

    .line 1102
    aget-object v14, v14, v4

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1bc

    .line 1103
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v1, :cond_1bf

    const/4 v1, 0x1

    .line 1104
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    const v1, 0x3f933333    # 1.15f

    .line 1105
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEyeComfortScaleFactor(F)V

    goto :goto_1bf

    :cond_1bc
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a1

    .line 1111
    :cond_1bf
    :goto_1bf
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEyeComfortScaleAppEnabled:Z

    if-nez v1, :cond_1cc

    .line 1112
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v1, :cond_1cc

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1113
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEyeComfortScaleFactor(F)V

    .line 1117
    :cond_1cc
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_1e9

    if-eqz v5, :cond_1e9

    .line 1118
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1120
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 1121
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1122
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_368

    :cond_1e9
    if-nez v1, :cond_20c

    if-eqz v6, :cond_20c

    .line 1125
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1127
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 1128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1129
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1130
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    int-to-long v5, v0

    add-long/2addr v1, v5

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_368

    :cond_20c
    if-nez v1, :cond_22f

    if-eqz v7, :cond_22f

    .line 1134
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1135
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1136
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 1137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1138
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1139
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    int-to-long v5, v0

    add-long/2addr v1, v5

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_368

    :cond_22f
    const-string v4, "MdnieScenarioControlService"

    if-nez v1, :cond_280

    if-eqz v8, :cond_280

    .line 1142
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1144
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 1145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in video Real Multi Window State : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-boolean v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v3, :cond_26f

    .line 1148
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    int-to-long v5, v0

    add-long/2addr v1, v5

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_368

    .line 1152
    :cond_26f
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1153
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    int-to-long v5, v0

    add-long/2addr v1, v5

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_368

    :cond_280
    if-nez v1, :cond_29c

    if-eqz v9, :cond_29c

    .line 1157
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1159
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 1160
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1161
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_368

    :cond_29c
    if-nez v1, :cond_2bf

    if-eqz v10, :cond_2bf

    .line 1164
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1165
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1166
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1168
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1169
    iget-object v3, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    int-to-long v5, v0

    add-long/2addr v1, v5

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_368

    :cond_2bf
    if-nez v1, :cond_2db

    if-eqz v11, :cond_2db

    .line 1172
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1174
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 1175
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1176
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_368

    :cond_2db
    if-nez v1, :cond_2f7

    if-eqz v12, :cond_2f7

    .line 1179
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1181
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 1182
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1183
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_368

    :cond_2f7
    if-nez v1, :cond_312

    if-eqz v13, :cond_312

    .line 1186
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1188
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 1189
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1190
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_368

    :cond_312
    if-nez v1, :cond_32d

    if-eqz v2, :cond_32d

    .line 1193
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1195
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    .line 1196
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1197
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_368

    :cond_32d
    const/4 v2, 0x2

    if-nez v1, :cond_34d

    if-eqz v3, :cond_34d

    .line 1200
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    if-nez v1, :cond_368

    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    .line 1202
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    const-string/jumbo v1, "setUIMode from UI function(2)"

    .line 1203
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1205
    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_368

    .line 1208
    :cond_34d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const-string/jumbo v1, "setUIMode from UI function(3)"

    .line 1210
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1212
    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    int-to-long v3, v0

    add-long/2addr v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_368
    :goto_368
    return-void
.end method

.method public final pixel_self_move(Z)V
    .registers 7

    .line 2357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pixel_self_move enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mNegativeColorEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mSelfMoveDisabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mSelfMoveOffAppEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_76

    .line 2359
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez p1, :cond_76

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    if-nez p1, :cond_76

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    if-nez p1, :cond_76

    .line 2360
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2361
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_PIXEL_SELF_MOVE_DEBOUNCE_MILLIS:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2362
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setPixelSelfMovePattern(I)V

    .line 2363
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_65

    .line 2364
    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_7a

    :cond_65
    const/4 v2, 0x3

    if-ne p1, v0, :cond_6b

    .line 2366
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_7a

    :cond_6b
    const/4 v0, 0x4

    if-ne p1, v2, :cond_71

    .line 2368
    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_7a

    :cond_71
    if-ne p1, v0, :cond_7a

    .line 2370
    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_7a

    :cond_76
    const/4 p1, 0x0

    .line 2373
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setPixelSelfMovePattern(I)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public final receive_screen_off_intent()V
    .registers 3

    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 732
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 733
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v0, :cond_10

    .line 734
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 735
    :cond_10
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    const/16 v1, 0x13

    if-eqz v0, :cond_28

    .line 736
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 737
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2f

    :cond_28
    if-nez v0, :cond_2f

    .line 740
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 742
    :cond_2f
    :goto_2f
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_47

    .line 743
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4e

    :cond_47
    if-nez v0, :cond_4e

    .line 747
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public final receive_screen_on_intent()V
    .registers 4

    const/4 v0, 0x0

    .line 723
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    const/4 v1, 0x1

    .line 724
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 725
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    if-eqz v2, :cond_f

    move v0, v1

    :cond_f
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 726
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 727
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public final registerProcessObserver()V
    .registers 3

    .line 2679
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2680
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2688
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_12

    .line 2689
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->eventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 2690
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1d

    :catch_16
    const-string p0, "MdnieScenarioControlService"

    const-string v0, "failed to registerProcessObserver"

    .line 2692
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method public final scenario_enable_reset()V
    .registers 2

    const/4 v0, 0x0

    .line 2104
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 2105
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 2106
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    .line 2107
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 2108
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 2109
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 2110
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 2111
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 2112
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 2113
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 2114
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 2115
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    return-void
.end method

.method public final setAclMode(ZI)V
    .registers 6

    .line 2186
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_22

    .line 2187
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 2188
    invoke-virtual {v0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    goto :goto_20

    :cond_d
    if-eqz v1, :cond_20

    .line 2190
    invoke-virtual {v0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    if-eqz p2, :cond_1e

    const/4 p1, 0x1

    if-ne p2, p1, :cond_18

    goto :goto_1e

    :cond_18
    const/4 v0, 0x2

    if-ne p2, v0, :cond_20

    .line 2194
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    goto :goto_20

    .line 2192
    :cond_1e
    :goto_1e
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    .line 2197
    :cond_20
    :goto_20
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    :cond_22
    return-void
.end method

.method public final setAclModePreview(ZI)V
    .registers 5

    .line 2202
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_14

    .line 2203
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclDimmingFunction:Z

    if-nez v1, :cond_c

    .line 2204
    invoke-virtual {v0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    goto :goto_11

    :cond_c
    if-eqz v1, :cond_11

    .line 2206
    invoke-virtual {v0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedInt(I)V

    :cond_11
    :goto_11
    const/4 p1, 0x1

    .line 2208
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    :cond_14
    return-void
.end method

.method public final setAppSettingState(Ljava/lang/String;I)V
    .registers 9

    .line 2785
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2786
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "settingstate"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2787
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "packagename = \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "MSCS_APP_LIST"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setAudioHDR(Z)V
    .registers 2

    .line 2301
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->semSetAudioHDR(Z)V

    return-void
.end method

.method public setAutoCurrentLimitOffMode(Z)V
    .registers 3

    .line 2378
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    .line 2379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAutoCurrentLimitOffState : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MdnieScenarioControlService"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    if-eqz p1, :cond_41

    const/4 p1, 0x1

    .line 2381
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    .line 2382
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    const/16 v0, 0x13

    if-eqz p1, :cond_39

    .line 2383
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2384
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2385
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_44

    :cond_39
    if-nez p1, :cond_44

    .line 2387
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_44

    :cond_41
    const/4 p1, 0x0

    .line 2391
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    :cond_44
    :goto_44
    return-void
.end method

.method public setAutoCurrentLimitOffModeSNS(Z)V
    .registers 2

    return-void
.end method

.method public final setBrightnessScaleFactor(I)V
    .registers 9

    .line 2238
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_124

    const-string v1, "brightness_scale_off"

    const-string v2, ")"

    const-string v3, "Calling SemDisplaySolutionManager API(setMultipleScreenBrightness("

    const-string v4, "MdnieScenarioControlService"

    if-nez p1, :cond_2b

    const/4 v5, 0x0

    .line 2240
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 2241
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_124

    :cond_2b
    const/4 v5, 0x1

    if-ne p1, v5, :cond_50

    .line 2243
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_50

    .line 2244
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string p0, "brightness_scale_on_1"

    .line 2245
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_124

    :cond_50
    const/4 v6, 0x2

    if-ne p1, v6, :cond_75

    .line 2247
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_75

    .line 2248
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string p0, "brightness_scale_on_2"

    .line 2249
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_124

    :cond_75
    const/4 v6, 0x3

    if-ne p1, v6, :cond_9a

    .line 2251
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_9a

    .line 2252
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string p0, "brightness_scale_on_3"

    .line 2253
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_124

    :cond_9a
    const/4 v6, 0x4

    if-ne p1, v6, :cond_be

    .line 2255
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_be

    .line 2256
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string p0, "brightness_scale_on_4"

    .line 2257
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124

    :cond_be
    const/4 v6, 0x5

    if-ne p1, v6, :cond_101

    .line 2259
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v6, :cond_101

    .line 2260
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    .line 2261
    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v5, 0xff

    if-ne p0, v5, :cond_e6

    .line 2262
    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124

    :cond_e6
    const-string p0, "brightness_scale_on_5"

    .line 2266
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124

    :cond_101
    const/4 v1, 0x6

    if-ne p1, v1, :cond_124

    .line 2269
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v1, :cond_124

    .line 2270
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    const-string p0, "brightness_scale_on_6"

    .line 2271
    invoke-virtual {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 2272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_124
    :goto_124
    return-void
.end method

.method public final setBrowserMode(Ljava/lang/String;)V
    .registers 7

    .line 1399
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 1402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1405
    :goto_d
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v0, 0x0

    move v1, v0

    .line 1407
    :goto_15
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_31

    .line 1408
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1409
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1410
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    goto :goto_31

    .line 1413
    :cond_29
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1414
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1418
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1420
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_c1

    const-string v1, "8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c1

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "BROWSER_APP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c1

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_c1

    .line 1421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p1, :cond_82

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz p1, :cond_8e

    .line 1423
    :cond_82
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p1, :cond_8b

    const/4 p1, 0x2

    .line 1424
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_8e

    .line 1426
    :cond_8b
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    :cond_8e
    :goto_8e
    const/16 p1, 0x8

    .line 1429
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1430
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v2, 0xff

    if-eq p1, v2, :cond_aa

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    if-eqz p1, :cond_aa

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez p1, :cond_aa

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez p1, :cond_aa

    const/4 p1, 0x5

    .line 1431
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_ad

    .line 1433
    :cond_aa
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1435
    :goto_ad
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1436
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1437
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1438
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1439
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1440
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo p0, "setBrowserMode from Browser function"

    .line 1441
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    return-void
.end method

.method public final setCameraMode(Ljava/lang/String;)V
    .registers 7

    .line 1482
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 1485
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1488
    :goto_d
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v0, 0x0

    move v1, v0

    .line 1490
    :goto_15
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2b

    .line 1491
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1492
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    goto :goto_2b

    .line 1495
    :cond_26
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1498
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1500
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 1502
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    if-nez p1, :cond_c2

    .line 1503
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_c4

    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c4

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "CAMERA_APP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c4

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_c4

    .line 1504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p1, :cond_82

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz p1, :cond_8e

    .line 1506
    :cond_82
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p1, :cond_8b

    const/4 p1, 0x2

    .line 1507
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_8e

    .line 1509
    :cond_8b
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    :cond_8e
    :goto_8e
    const/4 p1, 0x4

    .line 1512
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1513
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    if-eqz p1, :cond_a3

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez p1, :cond_a3

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez p1, :cond_a3

    const/4 p1, 0x6

    .line 1514
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_aa

    .line 1516
    :cond_a3
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    if-eqz p1, :cond_aa

    .line 1517
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1520
    :cond_aa
    :goto_aa
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1521
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1522
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1523
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1524
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1525
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1526
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    const-string/jumbo p0, "setCameraMode from Camera function"

    .line 1527
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 1531
    :cond_c2
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    :cond_c4
    :goto_c4
    return-void
.end method

.method public final setDMBMode(Ljava/lang/String;)V
    .registers 16

    .line 1892
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 1895
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    const/4 v0, 0x0

    .line 1899
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    if-eqz v1, :cond_18

    .line 1900
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v1, v0}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 1902
    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_Hdmi_Connected()Z

    move-result v1

    .line 1903
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v2

    .line 1904
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_35

    .line 1905
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v5

    if-ne v5, v3, :cond_35

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_35

    move v0, v3

    goto :goto_36

    :cond_35
    move v0, v4

    .line 1907
    :goto_36
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1909
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hdr_effect_enable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , app_setting_value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_59

    move v6, v3

    goto :goto_5a

    :cond_59
    move v6, v4

    :goto_5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MdnieScenarioControlService"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "setVideoMode from DMB function"

    const-string v7, " mAclPreviewState : "

    const-string v8, "VIDEO_APP"

    const-string v9, "1"

    const/4 v10, 0x2

    const-string v11, " mHighDynamicRangeEnabled : "

    const-string v12, " mAclCompensationState : "

    const-string v13, "mAclOffEnabled : "

    if-eqz v2, :cond_1a6

    .line 1913
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_1a6

    .line 1914
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez p1, :cond_129

    .line 1915
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_21f

    const-string v2, "15"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21f

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "VIDEO_ENHANCER_THIRD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21f

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_21f

    .line 1916
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p1, :cond_cc

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p1, :cond_c9

    goto :goto_cc

    .line 1921
    :cond_c9
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    goto :goto_d3

    .line 1918
    :cond_cc
    :goto_cc
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_d3

    .line 1919
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModePreview(ZI)V

    :cond_d3
    :goto_d3
    const/16 p1, 0xf

    .line 1923
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1924
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHdmiState : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mDexModeState : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mMirroringState : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_10b

    .line 1925
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    if-nez p1, :cond_10b

    if-eqz v0, :cond_107

    goto :goto_10b

    .line 1928
    :cond_107
    invoke-virtual {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_10e

    .line 1926
    :cond_10b
    :goto_10b
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1930
    :goto_10e
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1931
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1932
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1933
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1934
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1935
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1936
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1937
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo p0, "setVideoMode from DMB function(VIDEO_ENHANCER_THIRD)"

    .line 1938
    invoke-static {v6, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21f

    :cond_129
    if-eqz p1, :cond_21f

    .line 1941
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_21f

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21f

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21f

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_21f

    .line 1942
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p1, :cond_175

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz p1, :cond_188

    .line 1944
    :cond_175
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p1, :cond_181

    .line 1945
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_188

    .line 1946
    invoke-virtual {p0, v4, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_188

    .line 1948
    :cond_181
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_188

    .line 1949
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1952
    :cond_188
    :goto_188
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1953
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1954
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1955
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1956
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1957
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1958
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1959
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1960
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1961
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1962
    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21f

    .line 1966
    :cond_1a6
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_21f

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21f

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21f

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_21f

    .line 1967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p1, :cond_1f0

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz p1, :cond_203

    .line 1969
    :cond_1f0
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p1, :cond_1fc

    .line 1970
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_203

    .line 1971
    invoke-virtual {p0, v4, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_203

    .line 1973
    :cond_1fc
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_203

    .line 1974
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1977
    :cond_203
    :goto_203
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1978
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1979
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1980
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1981
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1982
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1983
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1984
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1985
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1986
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1987
    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21f
    :goto_21f
    return-void
.end method

.method public final setDouAppLaunch(Z)V
    .registers 4

    .line 2312
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_10

    .line 2313
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2314
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz p0, :cond_17

    .line 2315
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setDouAppModeEnable(Z)V

    :cond_17
    return-void
.end method

.method public final setEbookMode()V
    .registers 4

    .line 1822
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 1825
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1828
    :goto_d
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1830
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1832
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_93

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "eBOOK_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_93

    .line 1833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_65

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_72

    .line 1835
    :cond_65
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_6e

    const/4 v0, 0x2

    .line 1836
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_72

    :cond_6e
    const/4 v0, 0x1

    .line 1838
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    :cond_72
    :goto_72
    const/16 v0, 0x9

    .line 1841
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1842
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1843
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1844
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1845
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1846
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1847
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1848
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1849
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1850
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo p0, "setEbookMode from Ebook function"

    .line 1851
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    return-void
.end method

.method public final setEmailMode()V
    .registers 4

    .line 1857
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 1860
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1863
    :goto_d
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1865
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1867
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_93

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "EMAIL_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_93

    .line 1868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_65

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_72

    .line 1870
    :cond_65
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_6e

    const/4 v0, 0x2

    .line 1871
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_72

    :cond_6e
    const/4 v0, 0x1

    .line 1873
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    :cond_72
    :goto_72
    const/16 v0, 0xa

    .line 1876
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1877
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1878
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1879
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1880
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1881
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1882
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1883
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1884
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1885
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo p0, "setEmailMode from Email function"

    .line 1886
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    return-void
.end method

.method public final setEyeComfortScaleFactor(F)V
    .registers 2

    .line 2278
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz p0, :cond_7

    .line 2279
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setEyeComfortWeightingFactor(F)V

    :cond_7
    return-void
.end method

.method public final setGalleryMode(Ljava/lang/String;)V
    .registers 8

    .line 1447
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 1450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1455
    :goto_10
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_22

    .line 1456
    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v2, v5

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1461
    :cond_22
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1463
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_66

    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "GALLERY_APP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_66

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_66

    if-eqz v2, :cond_44

    .line 1465
    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModePreview(ZI)V

    :cond_44
    const/4 p1, 0x6

    .line 1466
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1467
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1468
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1469
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1470
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1471
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1472
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1473
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1474
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1475
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string p0, "MdnieScenarioControlService"

    const-string/jumbo p1, "setGalleryMode from Gallery function"

    .line 1476
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return-void
.end method

.method public final setGameMode(Ljava/lang/String;)V
    .registers 6

    .line 2041
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 2044
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2047
    :goto_d
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const-string v0, "LOW"

    .line 2049
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "OUT"

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    .line 2050
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_b2

    const-string v3, "11"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "GAME_LOW_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_b2

    const/16 v0, 0xb

    .line 2051
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto/16 :goto_b2

    :cond_3f
    const-string v0, "MID"

    .line 2052
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2053
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_b2

    const-string v3, "12"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "GAME_MID_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_b2

    const/16 v0, 0xc

    .line 2054
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto :goto_b2

    :cond_67
    const-string v0, "HIGH"

    .line 2055
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 2056
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_b2

    const-string v3, "13"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "GAME_HIGH_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_b2

    const/16 v0, 0xd

    .line 2057
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto :goto_b2

    .line 2058
    :cond_8f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 2059
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_b2

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "UI_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_b2

    .line 2060
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 2062
    :cond_b2
    :goto_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAclOffEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAclPreviewState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAclCompensationState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MdnieScenarioControlService"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v0, :cond_e6

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_f3

    .line 2064
    :cond_e6
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_ef

    const/4 v0, 0x2

    .line 2065
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_f3

    :cond_ef
    const/4 v0, 0x1

    .line 2067
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 2070
    :cond_f3
    :goto_f3
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 2071
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 2072
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 2073
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 2074
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 2075
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 2076
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 2077
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 2078
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 2079
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_116

    const-string/jumbo p0, "setUIMode from Game function"

    .line 2080
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    .line 2082
    :cond_116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setGameMode("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") from Game function"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_130
    return-void
.end method

.method public final setMdnieScenarioMode(I)V
    .registers 7

    .line 2213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2214
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v2, :cond_63

    .line 2215
    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 2216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling MdnieManager API(setContentMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MdnieScenarioControlService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    const/16 v4, 0x15

    if-ne p1, v2, :cond_43

    const/4 p1, 0x1

    .line 2218
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    const-string p1, "Start Browser Brightness Decrease Timer"

    .line 2219
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2221
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_63

    :cond_43
    const/4 p1, 0x0

    .line 2224
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    .line 2225
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    if-eqz p1, :cond_5c

    .line 2226
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2227
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2228
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_63

    :cond_5c
    if-nez p1, :cond_63

    .line 2231
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_63
    :goto_63
    return-void
.end method

.method public final setPixelSelfMovePattern(I)V
    .registers 4

    .line 2284
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPixelSelfMovePattern : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2d

    .line 2287
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_50

    :cond_2d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    .line 2289
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_50

    :cond_36
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3f

    .line 2291
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_50

    :cond_3f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_48

    .line 2293
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_50

    :cond_48
    const/4 v0, 0x4

    if-ne p1, v0, :cond_50

    .line 2295
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_50
    :goto_50
    return-void
.end method

.method public final setSNSMode(Ljava/lang/String;)V
    .registers 7

    .line 1994
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 1997
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    const/4 v0, 0x0

    move v1, v0

    .line 2000
    :goto_f
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2b

    .line 2001
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2002
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 2003
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    goto :goto_2b

    .line 2006
    :cond_23
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 2007
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2010
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 2012
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 2014
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_c0

    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c0

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "CAMERA_APP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c0

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_c0

    .line 2015
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p1, :cond_82

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz p1, :cond_8e

    .line 2017
    :cond_82
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p1, :cond_8b

    const/4 p1, 0x2

    .line 2018
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_8e

    .line 2020
    :cond_8b
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    :cond_8e
    :goto_8e
    const/4 p1, 0x4

    .line 2023
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 2024
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v2, 0xff

    if-eq p1, v2, :cond_a9

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    if-eqz p1, :cond_a9

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez p1, :cond_a9

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez p1, :cond_a9

    const/4 p1, 0x5

    .line 2025
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_ac

    .line 2027
    :cond_a9
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 2029
    :goto_ac
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 2030
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 2031
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 2032
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 2033
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 2034
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo p0, "setSnsMode(Same Camera Mode) from Sns function"

    .line 2035
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    return-void
.end method

.method public final setSVideoMode(ZLjava/lang/String;)V
    .registers 16

    .line 1655
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 1658
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    const/4 v0, 0x2

    const-string v1, " mAclPreviewState : "

    const-string v2, " mHighDynamicRangeEnabled : "

    const-string v3, " mAclCompensationState : "

    const-string v4, "mAclOffEnabled : "

    const-string v5, "MdnieScenarioControlService"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_235

    const/4 p1, 0x0

    .line 1663
    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    if-eqz v8, :cond_27

    .line 1664
    iget p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v8, p1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    .line 1666
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_Hdmi_Connected()Z

    move-result v8

    .line 1667
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v9

    .line 1668
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    if-eqz p1, :cond_42

    .line 1669
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v10

    if-ne v10, v6, :cond_42

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_42

    move p1, v6

    goto :goto_43

    :cond_42
    move p1, v7

    .line 1671
    :goto_43
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1672
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1674
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hdr_effect_enable : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " , app_setting_value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v6, :cond_66

    move v11, v6

    goto :goto_67

    :cond_66
    move v11, v7

    :goto_67
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " , mVideoModeCheck : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "setVideoMode from SVideo function"

    const-string v11, "VIDEO_APP"

    const-string v12, "1"

    if-eqz v9, :cond_1ba

    .line 1676
    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v6, :cond_1ba

    .line 1677
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez p2, :cond_139

    iget-boolean v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    if-eqz v9, :cond_139

    .line 1678
    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p2, :cond_2c2

    const-string v0, "14"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2c2

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v0, "VIDEO_ENHANCER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2c2

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p2, :cond_2c2

    .line 1679
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p2, :cond_dc

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p2, :cond_d9

    goto :goto_dc

    .line 1684
    :cond_d9
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    goto :goto_e3

    .line 1681
    :cond_dc
    :goto_dc
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p2, :cond_e3

    .line 1682
    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModePreview(ZI)V

    :cond_e3
    :goto_e3
    const/16 p2, 0xe

    .line 1686
    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1687
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mHdmiState : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mDexModeState : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mMirroringState : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_11b

    .line 1688
    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    if-nez p2, :cond_11b

    if-eqz p1, :cond_117

    goto :goto_11b

    .line 1691
    :cond_117
    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_11e

    .line 1689
    :cond_11b
    :goto_11b
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1693
    :goto_11e
    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1694
    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1695
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1696
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1697
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1698
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1699
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1700
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo p0, "setVideoMode from Video function(VIDEO_ENHANCER)"

    .line 1701
    invoke-static {v5, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c2

    :cond_139
    if-nez p2, :cond_13f

    .line 1703
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    if-nez p1, :cond_2c2

    .line 1704
    :cond_13f
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_2c2

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c2

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2c2

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_2c2

    .line 1705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p1, :cond_189

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz p1, :cond_19c

    .line 1707
    :cond_189
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p1, :cond_195

    .line 1708
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_19c

    .line 1709
    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_19c

    .line 1711
    :cond_195
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_19c

    .line 1712
    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1715
    :cond_19c
    :goto_19c
    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1716
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1717
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1718
    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1719
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1720
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1721
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1722
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1723
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1724
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1725
    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c2

    .line 1729
    :cond_1ba
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_2c2

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c2

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2c2

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_2c2

    .line 1730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p1, :cond_204

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz p1, :cond_217

    .line 1732
    :cond_204
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p1, :cond_210

    .line 1733
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_217

    .line 1734
    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_217

    .line 1736
    :cond_210
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_217

    .line 1737
    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1740
    :cond_217
    :goto_217
    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1741
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1742
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1743
    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1744
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1745
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1746
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1747
    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1748
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1749
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1750
    invoke-static {v5, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c2

    .line 1754
    :cond_235
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1755
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_PACKAGENAME:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2c2

    .line 1756
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_2c2

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c2

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string p2, "UI_APP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2c2

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_2c2

    .line 1757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p1, :cond_290

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz p1, :cond_2a3

    .line 1759
    :cond_290
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p1, :cond_29c

    .line 1760
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_2a3

    .line 1761
    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_2a3

    .line 1763
    :cond_29c
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez p1, :cond_2a3

    .line 1764
    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1767
    :cond_2a3
    :goto_2a3
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1768
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1769
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1770
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1771
    invoke-virtual {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1772
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1773
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1774
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1775
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1776
    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo p0, "setUIMode from SVideo function"

    .line 1777
    invoke-static {v5, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c2
    :goto_2c2
    return-void
.end method

.method public final setSVideoOptionMode()V
    .registers 5

    .line 1785
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 1788
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1791
    :goto_d
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1793
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1795
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_a3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "VIDEO_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v0, :cond_a3

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mHighDynamicRangeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_70

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v0, :cond_84

    .line 1798
    :cond_70
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v0, :cond_7d

    .line 1799
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_84

    const/4 v0, 0x2

    .line 1800
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_84

    .line 1802
    :cond_7d
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v0, :cond_84

    .line 1803
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1806
    :cond_84
    :goto_84
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1807
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1808
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1809
    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1810
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1811
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1812
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1813
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1814
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    .line 1815
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo p0, "setVideoMode from SVideoOption function"

    .line 1816
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    return-void
.end method

.method public final setUIMode(Ljava/lang/String;)V
    .registers 7

    .line 1347
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    .line 1350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1353
    :goto_d
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v0, 0x0

    move v1, v0

    .line 1355
    :goto_15
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->OVERHEAT_CONTROL_SUPPORT_APP_LIST:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2b

    .line 1356
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1357
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    goto :goto_2b

    .line 1360
    :cond_26
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1364
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1365
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    if-nez p1, :cond_be

    .line 1366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAclOffEnabled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclPreviewState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAclCompensationState : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez p1, :cond_66

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz p1, :cond_76

    :cond_66
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez p1, :cond_76

    .line 1368
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz p1, :cond_73

    const/4 p1, 0x2

    .line 1369
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_76

    .line 1371
    :cond_73
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1375
    :cond_76
    :goto_76
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    if-eqz p1, :cond_87

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez p1, :cond_87

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez p1, :cond_87

    const/4 p1, 0x6

    .line 1376
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_8e

    .line 1378
    :cond_87
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseScaleFactorState:Z

    if-eqz p1, :cond_8e

    .line 1379
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1383
    :cond_8e
    :goto_8e
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz p1, :cond_be

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_be

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_be

    .line 1384
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1385
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1386
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1387
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1388
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1389
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1390
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1391
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    const-string/jumbo p0, "setUIMode from UI function"

    .line 1392
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    return-void
.end method

.method public final setVideoAppLaunch(Z)V
    .registers 4

    .line 2305
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_10

    .line 2306
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 2307
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz p0, :cond_17

    .line 2308
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setVideoModeEnable(Z)V

    :cond_17
    return-void
.end method

.method public final setVideoMode(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v1, p0

    .line 1537
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    .line 1540
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    const/4 v0, 0x0

    move v2, v0

    .line 1543
    :goto_11
    iget-object v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DAY_OF_USE_SUPPORT_APP_LIST:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2f

    .line 1544
    aget-object v3, v3, v2

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1545
    invoke-virtual {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1546
    iput-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    goto :goto_31

    .line 1549
    :cond_27
    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDouAppLaunch(Z)V

    .line 1550
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2f
    move-object/from16 v4, p1

    :goto_31
    const/4 v2, 0x0

    .line 1555
    iget-object v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    if-eqz v3, :cond_3c

    .line 1556
    iget v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v3, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 1558
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_Hdmi_Connected()Z

    move-result v3

    .line 1559
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v6

    .line 1560
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    if-eqz v2, :cond_57

    .line 1561
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v7

    if-ne v7, v5, :cond_57

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_57

    move v2, v5

    goto :goto_58

    :cond_57
    move v2, v0

    .line 1563
    :goto_58
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_autocurrentlimit_state()Z

    move-result v7

    iput-boolean v7, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    .line 1564
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hdr_effect_enable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " , app_setting_value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_7b

    move v8, v5

    goto :goto_7c

    :cond_7b
    move v8, v0

    :goto_7c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MdnieScenarioControlService"

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "setVideoMode from Video function"

    const-string v9, " mAclPreviewState : "

    const-string v10, "VIDEO_APP"

    const-string v11, "1"

    const/4 v13, 0x2

    const-string v15, " mHighDynamicRangeEnabled : "

    const-string v12, " mAclCompensationState : "

    const-string v14, "mAclOffEnabled : "

    if-eqz v6, :cond_1ec

    .line 1568
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppSettingState(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_1ec

    .line 1569
    iget-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v4, :cond_15d

    .line 1570
    iget-object v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v4, :cond_277

    const-string v6, "15"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_277

    iget-object v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v6, "VIDEO_ENHANCER_THIRD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_277

    iget-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v4, :cond_277

    .line 1571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v4, :cond_ee

    iget-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v4, :cond_eb

    goto :goto_ee

    .line 1576
    :cond_eb
    iput-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    goto :goto_f5

    .line 1573
    :cond_ee
    :goto_ee
    iget-boolean v4, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v4, :cond_f5

    .line 1574
    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclModePreview(ZI)V

    :cond_f5
    :goto_f5
    const/16 v4, 0xf

    .line 1578
    invoke-virtual {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHdmiState : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mDexModeState : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mMirroringState : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_12d

    .line 1580
    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    if-nez v3, :cond_12d

    if-eqz v2, :cond_129

    goto :goto_12d

    .line 1587
    :cond_129
    invoke-virtual {v1, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_147

    .line 1581
    :cond_12d
    :goto_12d
    iget v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_144

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    if-eqz v2, :cond_144

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v2, :cond_144

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v2, :cond_144

    const/4 v2, 0x5

    .line 1582
    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_147

    .line 1584
    :cond_144
    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1589
    :goto_147
    invoke-virtual {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1590
    invoke-virtual {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1591
    iput-boolean v5, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1592
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1593
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1594
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    const-string/jumbo v0, "setVideoMode from Video function(VIDEO_ENHANCER_THIRD)"

    .line 1595
    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_277

    :cond_15d
    if-eqz v4, :cond_277

    .line 1598
    iget-object v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v2, :cond_277

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_277

    iget-object v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_277

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v2, :cond_277

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v2, :cond_1a9

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v2, :cond_1bc

    .line 1601
    :cond_1a9
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v2, :cond_1b5

    .line 1602
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v2, :cond_1bc

    .line 1603
    invoke-virtual {v1, v0, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_1bc

    .line 1605
    :cond_1b5
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v2, :cond_1bc

    .line 1606
    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1609
    :cond_1bc
    :goto_1bc
    invoke-virtual {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1610
    iget v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1d6

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    if-eqz v2, :cond_1d6

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v2, :cond_1d6

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v2, :cond_1d6

    const/4 v2, 0x5

    .line 1611
    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_1d9

    .line 1613
    :cond_1d6
    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1615
    :goto_1d9
    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1616
    invoke-virtual {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1617
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1618
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1619
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1620
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1621
    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_277

    .line 1625
    :cond_1ec
    iget-object v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v2, :cond_277

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_277

    iget-object v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_277

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v2, :cond_277

    .line 1626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-nez v2, :cond_236

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclPreviewState:Z

    if-eqz v2, :cond_249

    .line 1628
    :cond_236
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclCompensationState:Z

    if-eqz v2, :cond_242

    .line 1629
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v2, :cond_249

    .line 1630
    invoke-virtual {v1, v0, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    goto :goto_249

    .line 1632
    :cond_242
    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    if-nez v2, :cond_249

    .line 1633
    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZI)V

    .line 1636
    :cond_249
    :goto_249
    invoke-virtual {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1637
    iget v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_263

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDayOfUseSupportAppState:Z

    if-eqz v2, :cond_263

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v2, :cond_263

    iget-boolean v2, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v2, :cond_263

    const/4 v2, 0x5

    .line 1638
    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_266

    .line 1640
    :cond_263
    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1642
    :goto_266
    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1643
    invoke-virtual {v1, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    .line 1644
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnhacnerEnabled:Z

    .line 1645
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    .line 1646
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSamsungVideoAppState:Z

    .line 1647
    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mOverheatControlSupportAppState:Z

    .line 1648
    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_277
    :goto_277
    return-void
.end method

.method public final set_wcg_property()V
    .registers 6

    .line 904
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDeviceProvisioned:Z

    const/4 v1, 0x1

    if-nez v0, :cond_43

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDNIe Screen Mode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_LCD_CONFIG_DEFAULT_SCREEN_MODE"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MdnieScenarioControlService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_34

    .line 907
    invoke-virtual {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(I)V

    goto :goto_43

    .line 908
    :cond_34
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_43

    const/4 v0, 0x0

    .line 909
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(I)V

    .line 913
    :cond_43
    :goto_43
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 914
    invoke-virtual {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->wcg_property_changed(I)V

    :cond_4c
    return-void
.end method

.method public final setting_is_changed()V
    .registers 6

    .line 817
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    .line 819
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDeviceProvisioned:Z

    const-string v1, "low_power"

    .line 820
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1f

    move v1, v3

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPowerSavingModeEnabled:Z

    const-string/jumbo v1, "screen_mode_automatic_setting"

    const/4 v4, -0x2

    .line 821
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_2e

    move v1, v3

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAdaptiveScreenModeEnabled:Z

    const-string/jumbo v1, "self_move_disable_setting"

    .line 822
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_3c

    move v1, v3

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    const-string v1, "high_contrast"

    .line 823
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_49

    move v1, v3

    goto :goto_4a

    :cond_49
    move v1, v2

    :goto_4a
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    const-string v1, "lcd_curtain"

    .line 824
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_56

    move v1, v3

    goto :goto_57

    :cond_56
    move v1, v2

    :goto_57
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    const-string v1, "color_blind"

    .line 825
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_63

    move v1, v3

    goto :goto_64

    :cond_63
    move v1, v2

    :goto_64
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    const-string v1, "high_brightness_mode_pms_enter"

    .line 826
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_70

    move v1, v3

    goto :goto_71

    :cond_70
    move v1, v2

    :goto_71
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    const-string/jumbo v1, "screen_brightness_mode"

    .line 827
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v3, :cond_7e

    move v1, v3

    goto :goto_7f

    :cond_7e
    move v1, v2

    :goto_7f
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    const-string/jumbo v1, "screen_off_timeout"

    .line 828
    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const v1, 0x927c0

    if-le v0, v1, :cond_8f

    move v0, v3

    goto :goto_90

    :cond_8f
    move v0, v2

    :goto_90
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenOffTomeoutAbnormal:Z

    .line 830
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAdaptiveScreenModeEnabled:Z

    if-eqz v0, :cond_a4

    move v0, v3

    goto :goto_a5

    :cond_a4
    move v0, v2

    :goto_a5
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 831
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v1, :cond_b2

    if-eqz v0, :cond_b2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    if-eqz v0, :cond_b2

    goto :goto_b3

    :cond_b2
    move v3, v2

    :goto_b3
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 833
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_WIDE_COLOR_GAMUT"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 834
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->set_wcg_property()V

    .line 836
    :cond_c4
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    if-eqz v0, :cond_d6

    .line 838
    :try_start_c8
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_ce} :catch_cf

    goto :goto_d6

    :catch_cf
    const-string v0, "MdnieScenarioControlService"

    const-string v1, "failed to onForegroundActivitiesChanged"

    .line 840
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_d6
    :goto_d6
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v0, :cond_de

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v0, :cond_ea

    .line 854
    :cond_de
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 858
    :cond_ea
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v0, :cond_102

    .line 859
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez v0, :cond_f6

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    if-eqz v0, :cond_102

    .line 860
    :cond_f6
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 861
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_102
    return-void
.end method

.method public updateVideoEnhancerSettingState(Ljava/lang/String;I)V
    .registers 5

    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update Video Enhancer SubKey state. package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAppSettingState(Ljava/lang/String;I)V

    return-void
.end method

.method public final wcg_property_changed(I)V
    .registers 5

    .line 919
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.sys.sf.native_mode"

    invoke-static {v0, p0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SurfaceFlinger"

    .line 920
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 923
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x3ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 926
    :try_start_22
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_2b
    .catchall {:try_start_22 .. :try_end_25} :catchall_29

    .line 930
    :goto_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_38

    :catchall_29
    move-exception p0

    goto :goto_34

    :catch_2b
    move-exception p0

    :try_start_2c
    const-string p1, "MdnieScenarioControlService"

    const-string v1, "Failed to set display color"

    .line 928
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    goto :goto_25

    .line 930
    :goto_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    throw p0

    :cond_38
    :goto_38
    return-void
.end method

.method public final writeVideoEnhancerListInDataBase()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 2706
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_f

    .line 2707
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    move v1, v0

    .line 2709
    :goto_10
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 2710
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2712
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2a

    .line 2713
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2a
    return-void
.end method

.method public final writeVideoEnhancerListInDataBase2()V
    .registers 8

    .line 2719
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2720
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2721
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2722
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2723
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppListRegistState(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    .line 2724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 2725
    :goto_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 2726
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4d

    .line 2727
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "packagename"

    .line 2728
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "settingstate"

    const/4 v6, 0x1

    .line 2729
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2730
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 2733
    :cond_50
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MSCS_APP_LIST"

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->bulkInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p0

    .line 2735
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5e
    return-void
.end method
