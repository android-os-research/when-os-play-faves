.class public Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field public final ANIMATION_DEBOUNCE_MILLIS:J

.field public final ANIMATION_MAX_COUNT:F

.field public final APP_MANAGER_NAME:Ljava/lang/String;

.field public final BLUE_LIGHT_FILTER:Ljava/lang/String;

.field public final BROWSER_MODE_DEBOUNCE_MILLIS:J

.field public final BROWSER_NAMES:[Ljava/lang/String;

.field public final DEBUG:Z

.field public final EBOOK_NAMES:[Ljava/lang/String;

.field public final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field public final FOREGROUND_THREAD_DELAY_MILLIS:J

.field public final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field public final LIGHT_SENSOR_READ_DELAY:I

.field public final MAX_RGB_SENSOR_COUNT:I

.field public final MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

.field public final MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

.field public final MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

.field public final MEDIA_PLAYER_NAMES:[Ljava/lang/String;

.field public final MSG_ANIMATE_SCR_RGB:I

.field public final MSG_FOREGROUND_APP:I

.field public final MSG_RESCAN_FOREGROUND_APP:I

.field public final MSG_RGB_DEBOUNCE:I

.field public final MSG_SEND_RGB_AVERAGE:I

.field public final MSG_SET_BROWSER_MODE:I

.field public final MSG_SET_EBOOK_MODE:I

.field public final MSG_SET_VIDEO_MODE:I

.field public final MSG_TERMINATE_SCR_RGB:I

.field public final MSG_TERMINATE_VIDEO_MODE:I

.field public final MULTI_SCREEN_DEBOUNCE_MILLIS:J

.field public final NUMBER_COEFFICIENT_VALUE:I

.field public final RGB_DEBOUNCE_MILLIS:J

.field public final RGB_FLOAT_MAX:F

.field public final RGB_INTEGER_MAX:I

.field public final SBROWSER_NAME:Ljava/lang/String;

.field public final SCENARIO_FILE_PATH:Ljava/lang/String;

.field public final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field public final SCREEN_MODE_SETTING:Ljava/lang/String;

.field public final SCR_FILE_PATH:Ljava/lang/String;

.field public final SETUP_WIZARD_NAME:Ljava/lang/String;

.field public final TEST_RGB_EXPONENTIAL:I

.field public final VIDEO_MODE_DEBOUNCE_MILLIS:J

.field public exitHomeDelay:I

.field public exitHomeDelayTime:J

.field public exitMenuDelay:I

.field public exitMenuDelayTime:J

.field public foregroundDelayTime:J

.field public isLockScreenOn:Z

.field public mAceessibilityEnabled:Z

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mAutoModeEnabled:Z

.field public mAvgB:F

.field public mAvgG:F

.field public mAvgR:F

.field public mBlueFilterEnabled:Z

.field public mBrowserScenarioEnabled:Z

.field public mCoefficientValueArray:[F

.field public mColorBlindEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public mCountAnimationValue:I

.field public mCountSensorValue:I

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverState:Z

.field public mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field public mDefaultAdjustB:I

.field public mDefaultAdjustG:I

.field public mDefaultAdjustR:I

.field public mDefaultB:I

.field public mDefaultEbookB:I

.field public mDefaultEbookG:I

.field public mDefaultEbookR:I

.field public mDefaultG:I

.field public mDefaultR:I

.field public mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mDuration:I

.field public mEBookScenarioIntented:Z

.field public mEbookAdjustB:I

.field public mEbookAdjustG:I

.field public mEbookAdjustR:I

.field public mEbookScenarioEnabled:Z

.field public mEnableCondition:Z

.field public mEnvironmentDisplayColorServiceEnable:Z

.field public mFinalIntAvgB:I

.field public mFinalIntAvgG:I

.field public mFinalIntAvgR:I

.field public mForegroundThreadWork:Z

.field public mGreyScaleModeEnabled:Z

.field public mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mIActivityManager:Landroid/app/IActivityManager;

.field public mIsFirstStart:Z

.field public mLastAvgB:F

.field public mLastAvgG:F

.field public mLastAvgR:F

.field public mLastChangedRgbTime:J

.field public mLightSensorB:I

.field public mLightSensorDelay:I

.field public mLightSensorG:I

.field public mLightSensorR:I

.field public mMultiWindowOn:Z

.field public mNegativeColorEnabled:Z

.field public mPrevContorlZone:I

.field public mPrevIntAvgB:I

.field public mPrevIntAvgG:I

.field public mPrevIntAvgR:I

.field public mProcessObserver:Landroid/app/IProcessObserver;

.field public mRgbSensor:Landroid/hardware/Sensor;

.field public mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field public mRgbThreshold:F

.field public mSContextListener:Landroid/hardware/scontext/SContextListener;

.field public mSContextManager:Landroid/hardware/scontext/SContextManager;

.field public mScrFileExists:Z

.field public mScreenCurtainEnabled:Z

.field public mScreenMode:I

.field public mScreenStateOn:Z

.field public mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field public mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public mSensorEnabled:Z

.field public mSensorHubSupportInterrupt:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSensorValueValid:Z

.field public mSettingCondition:Z

.field public mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

.field public mSumLux:J

.field public mTempIntAvgB:I

.field public mTempIntAvgG:I

.field public mTempIntAvgR:I

.field public mTestScrB:I

.field public mTestScrG:I

.field public mTestScrR:I

.field public mUseAdaptiveDisplayColorServiceConfig:Z

.field public mUseEnvironmentDisplayColorConfig:Z

.field public mValidZone:Z

.field public mVideoScenarioEnabled:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightSensorB(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightSensorDelay(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightSensorG(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightSensorR(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRgbSensor(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRgbSensorListener(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorValueValid(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputisLockScreenOn(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAvgB(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAvgG(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAvgR(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCountSensorValue(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverState(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplaySolutionManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLightSensorDelay(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSemMdnieManager(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/SemMdnieManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSumLux(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$manimateScrRGB(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetRgbFromLightSensor(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRgbSensorEvent(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorEvent(IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmonitorForegroundBrowser(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_off_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_on_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendRgbAverage(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBrowserMode(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setBrowserMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEbookMode(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setEbookMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVideoMode(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setVideoMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetting_is_changed(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mterminateScrRGB(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateScrRGB()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mterminateVideoMode(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateVideoMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 269
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    const/16 v2, 0xff

    .line 93
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_INTEGER_MAX:I

    const/high16 v3, 0x437f0000    # 255.0f

    .line 94
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_FLOAT_MAX:F

    const/4 v3, 0x0

    .line 96
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_FOREGROUND_APP:I

    const/4 v4, 0x1

    .line 97
    iput v4, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_RESCAN_FOREGROUND_APP:I

    const/4 v5, 0x2

    .line 98
    iput v5, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    const/4 v6, 0x3

    .line 99
    iput v6, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_ANIMATE_SCR_RGB:I

    const/4 v6, 0x4

    .line 100
    iput v6, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_EBOOK_MODE:I

    const/4 v6, 0x5

    .line 101
    iput v6, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_VIDEO_MODE:I

    const/4 v7, 0x6

    .line 102
    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_BROWSER_MODE:I

    const/4 v7, 0x7

    .line 103
    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_TERMINATE_VIDEO_MODE:I

    const/16 v7, 0x8

    .line 104
    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_TERMINATE_SCR_RGB:I

    const/16 v7, 0x9

    .line 105
    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_RGB_DEBOUNCE:I

    const/high16 v7, 0x41a00000    # 20.0f

    .line 107
    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->ANIMATION_MAX_COUNT:F

    const v7, 0x989680

    .line 108
    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->TEST_RGB_EXPONENTIAL:I

    .line 109
    iput v5, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->LIGHT_SENSOR_READ_DELAY:I

    const/16 v7, 0x14

    .line 110
    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MAX_RGB_SENSOR_COUNT:I

    const/16 v7, 0x24

    .line 111
    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->NUMBER_COEFFICIENT_VALUE:I

    const-wide/16 v8, 0x2710

    .line 113
    iput-wide v8, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    const-wide/16 v8, 0xfa

    .line 114
    iput-wide v8, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->ANIMATION_DEBOUNCE_MILLIS:J

    const-wide/16 v8, 0x12c

    .line 115
    iput-wide v8, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->FOREGROUND_THREAD_DELAY_MILLIS:J

    const-wide/16 v10, 0x1f4

    .line 116
    iput-wide v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->VIDEO_MODE_DEBOUNCE_MILLIS:J

    .line 117
    iput-wide v8, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_MODE_DEBOUNCE_MILLIS:J

    const-wide/16 v10, 0x2bc

    .line 118
    iput-wide v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MULTI_SCREEN_DEBOUNCE_MILLIS:J

    const-wide/16 v12, 0x3e8

    .line 119
    iput-wide v12, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    const-string/jumbo v12, "screen_mode_automatic_setting"

    .line 121
    iput-object v12, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v13, "screen_mode_setting"

    .line 122
    iput-object v13, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string v13, "blue_light_filter"

    .line 123
    iput-object v13, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BLUE_LIGHT_FILTER:Ljava/lang/String;

    const-string v14, "1"

    .line 124
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

    const-string v14, "8"

    .line 125
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

    const-string v14, "9"

    .line 126
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

    const-string v14, "/sys/class/mdnie/mdnie/sensorRGB"

    .line 128
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    const-string v14, "/sys/class/mdnie/mdnie/scenario"

    .line 129
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCENARIO_FILE_PATH:Ljava/lang/String;

    const-string v14, "/sys/class/sensors/light_sensor/raw_data"

    .line 130
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    const-string v14, "com.sec.android.app.SecSetupWizard"

    .line 131
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SETUP_WIZARD_NAME:Ljava/lang/String;

    const-string v14, "com.android.systemui"

    .line 132
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->APP_MANAGER_NAME:Ljava/lang/String;

    const-string v14, "com.sec.android.app.sbrowser"

    .line 133
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SBROWSER_NAME:Ljava/lang/String;

    const-string v15, "com.google.android.apps.books"

    .line 134
    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    const-string v15, "com.android.chrome"

    .line 138
    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    const-string v15, "com.zgz.supervideo"

    const-string v16, "com.kmplayer"

    const-string v17, "com.pg.gom"

    const-string v18, "com.gretech.gomplayer"

    const-string v19, "com.mxtech.videoplayer"

    const-string v20, "com.nhn.android.naverplayer"

    const-string v21, "com.inisoft.mediaplayer"

    const-string v22, "com.google.android.youtube"

    const-string v23, "com.google.android.videos"

    .line 143
    filled-new-array/range {v15 .. v23}, [Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    .line 157
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 158
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    .line 159
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 160
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    .line 161
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 162
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    const/4 v14, 0x0

    .line 168
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    .line 169
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 170
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 173
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAceessibilityEnabled:Z

    .line 174
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 175
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    .line 176
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 177
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    .line 178
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    .line 179
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mForegroundThreadWork:Z

    .line 181
    iput-boolean v4, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    .line 183
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 184
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 185
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 186
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 187
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    .line 188
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    .line 189
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 190
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 191
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 193
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    .line 194
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mGreyScaleModeEnabled:Z

    .line 196
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenMode:I

    const/4 v15, -0x1

    .line 198
    iput v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 200
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 208
    iput v4, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    .line 209
    iput v4, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    .line 210
    iput v4, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    const/4 v15, 0x0

    .line 217
    iput v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 218
    iput v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 219
    iput v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    .line 220
    iput v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 221
    iput v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 222
    iput v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    const v15, 0x3d8f5c29    # 0.07f

    .line 223
    iput v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    const/16 v15, 0x23

    .line 225
    iput v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDuration:I

    const-wide/16 v10, 0x0

    .line 227
    iput-wide v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 229
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 230
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 231
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 233
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 234
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 235
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 237
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 238
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 239
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 241
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 242
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 243
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    .line 245
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 246
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 247
    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 249
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    .line 250
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    .line 251
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    .line 253
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 254
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 255
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 257
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 259
    iput-boolean v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 263
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 265
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 267
    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 424
    new-instance v10, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;

    invoke-direct {v10, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 621
    new-instance v10, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;

    invoke-direct {v10, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    .line 650
    new-instance v10, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;

    invoke-direct {v10, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 668
    new-instance v10, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;

    invoke-direct {v10, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 270
    iput-object v1, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    .line 272
    new-instance v10, Landroid/os/HandlerThread;

    const-string v11, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v10, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 273
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 274
    new-instance v10, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    iput-object v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110153

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110154

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    .line 283
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUseEnvironmentDisplayColorConfig : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", mUseEnvironmentDisplayColorConfig : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AdaptiveDisplayColorService"

    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v10, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-direct {v10, v0, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    iput-object v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 289
    new-instance v15, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v15, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string v15, "lcd_curtain"

    .line 291
    invoke-static {v15}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iget-object v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v10, v15, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "high_contrast"

    .line 292
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v10, v2, v3, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "color_blind"

    .line 293
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v10, v2, v3, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v2, "ultra_powersaving_mode"

    .line 294
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v10, v2, v3, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 295
    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v10, v2, v3, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    invoke-static {v13}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    invoke-virtual {v10, v2, v3, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.BOOT_COMPLETED"

    .line 299
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.action.SCREEN_ON"

    .line 300
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.action.SCREEN_OFF"

    .line 301
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v10, "android.intent.action.USER_PRESENT"

    .line 302
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    new-instance v10, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    invoke-direct {v10, v0, v14}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver-IA;)V

    invoke-virtual {v1, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "activity"

    .line 305
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_270

    const-string v10, "com.sec.feature.sensorhub"

    .line 310
    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_25b

    const-string v10, "com.sec.feature.scontext_lite"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_270

    :cond_25b
    const-string/jumbo v2, "scontext"

    .line 311
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_270

    const/16 v10, 0x2c

    .line 314
    invoke-virtual {v2, v10}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    .line 319
    :cond_270
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v2, :cond_287

    .line 320
    new-instance v2, Landroid/hardware/SystemSensorManager;

    iget-object v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v2, v1, v10}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 321
    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    .line 324
    :cond_287
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v2, :cond_32e

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1070038

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 326
    aget v6, v2, v3

    iput v6, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 327
    aget v6, v2, v4

    iput v6, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 328
    aget v2, v2, v5

    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1070067

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 331
    aget v6, v2, v3

    iput v6, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    .line 332
    aget v6, v2, v4

    iput v6, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    .line 333
    aget v2, v2, v5

    iput v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0013

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 336
    iput-wide v8, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    if-eqz v2, :cond_2cb

    int-to-long v5, v2

    .line 338
    iput-wide v5, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    .line 340
    :cond_2cb
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0010

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 341
    iput-wide v8, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    if-eqz v2, :cond_2dd

    int-to-long v5, v2

    .line 343
    iput-wide v5, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    .line 345
    :cond_2dd
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0011

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-wide/16 v5, 0x2bc

    .line 346
    iput-wide v5, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    if-eqz v2, :cond_2f1

    int-to-long v5, v2

    .line 348
    iput-wide v5, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    .line 350
    :cond_2f1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [F

    .line 352
    iput-object v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move v2, v3

    .line 354
    :goto_301
    array-length v5, v1

    if-ge v2, v5, :cond_319

    .line 355
    iget-object v5, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget-object v6, v1, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_301

    .line 358
    :cond_319
    iput-boolean v4, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 359
    iput v3, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 361
    iget v1, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    const/16 v2, 0xff

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 362
    iget v1, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 363
    iget v1, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 366
    :cond_32e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V

    .line 369
    :try_start_331
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 370
    iget-object v2, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_33a
    .catch Landroid/os/RemoteException; {:try_start_331 .. :try_end_33a} :catch_33b

    goto :goto_344

    .line 372
    :catch_33b
    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v0, :cond_344

    const-string v0, "failed to registerProcessObserver"

    .line 373
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_344
    :goto_344
    return-void
.end method


# virtual methods
.method public final animateScrRGB()V
    .registers 10

    .line 1217
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    .line 1218
    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    if-lez v0, :cond_c4

    const/16 v0, 0x14

    const-string v2, "/sys/class/mdnie/mdnie/sensorRGB"

    const-string v3, " "

    const/16 v4, 0xff

    if-ne v1, v0, :cond_56

    .line 1224
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 1225
    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 1226
    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    if-lez v0, :cond_c4

    if-gt v0, v4, :cond_c4

    if-lez v1, :cond_c4

    if-gt v1, v4, :cond_c4

    if-lez v5, :cond_c4

    if-gt v5, v4, :cond_c4

    .line 1229
    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v0, v4, :cond_34

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v1, v4, :cond_34

    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v5, v4, :cond_c4

    .line 1230
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1231
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1233
    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1234
    iput v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    goto :goto_c4

    .line 1242
    :cond_56
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v0, v6

    int-to-float v7, v1

    mul-float/2addr v0, v7

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 1246
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v0, v6

    int-to-float v8, v1

    mul-float/2addr v0, v8

    float-to-int v0, v0

    add-int/2addr v7, v0

    .line 1250
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iget v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    div-float/2addr v0, v6

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v8, v0

    if-lez v5, :cond_b2

    if-gt v5, v4, :cond_b2

    if-lez v7, :cond_b2

    if-gt v7, v4, :cond_b2

    if-lez v8, :cond_b2

    if-gt v8, v4, :cond_b2

    .line 1255
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v5, v0, :cond_91

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v7, v0, :cond_91

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v8, v0, :cond_b2

    .line 1256
    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    iput v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1259
    iput v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1260
    iput v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 1264
    :cond_b2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1265
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1266
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v4, 0xfa

    add-long/2addr v0, v4

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_c4
    :goto_c4
    return-void
.end method

.method public final enableRgbSensor(Z)V
    .registers 7

    .line 575
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "AdaptiveDisplayColorService"

    if-nez v0, :cond_14

    const-string v0, "StatFs returns null."

    .line 578
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_14
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRgbSensor : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const/16 v0, 0x2c

    const/4 v1, 0x3

    if-eqz p1, :cond_7e

    .line 584
    iget v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 585
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    const/4 v3, 0x1

    .line 586
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    const/4 v3, 0x0

    .line 587
    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 588
    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 589
    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 590
    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 591
    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 592
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v2, :cond_70

    .line 593
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_b5

    .line 594
    new-instance v1, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;

    iget v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDuration:I

    invoke-direct {v1, v2, v3}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;-><init>(FI)V

    .line 596
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    goto :goto_b5

    .line 599
    :cond_70
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_b5

    .line 600
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_b5

    :cond_7e
    const/16 v2, 0xff

    .line 603
    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 604
    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 605
    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 606
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v1, :cond_ac

    .line 611
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_b5

    .line 612
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_b5

    .line 614
    :cond_ac
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_b5

    .line 615
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 618
    :cond_b5
    :goto_b5
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    return-void
.end method

.method public final fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1303
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    const-string v0, "AdaptiveDisplayColorService"

    if-eqz p0, :cond_22

    .line 1304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteString : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  value : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 p0, 0x0

    .line 1308
    :try_start_23
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_40
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_3c

    .line 1314
    :try_start_2d
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1315
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_39} :catch_3a

    goto :goto_60

    :catch_3a
    move-exception p0

    goto :goto_55

    :catch_3c
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_55

    .line 1310
    :catch_40
    :try_start_40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteString : file not found : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_54} :catch_3c

    return-void

    .line 1317
    :goto_55
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1319
    :try_start_58
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p0

    .line 1321
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_60
    return-void
.end method

.method public final getRgbFromLightSensor()V
    .registers 6

    :try_start_0
    const-string v0, "/sys/class/sensors/light_sensor/raw_data"

    .line 785
    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 787
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_59

    .line 789
    :try_start_13
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I

    const/4 v2, 0x1

    .line 790
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I

    const/4 v3, 0x2

    .line 791
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I

    .line 792
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_3b} :catch_3c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_3b} :catch_59

    goto :goto_5d

    :catch_3c
    move-exception v0

    :try_start_3d
    const-string v2, "AdaptiveDisplayColorService"

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    goto :goto_5d

    .line 799
    :cond_56
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p0

    .line 801
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5d
    return-void
.end method

.method public final getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "File Close error"

    const-string v0, "AdaptiveDisplayColorService"

    const/16 v1, 0x80

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_11

    .line 813
    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 816
    :try_start_12
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_63
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_44
    .catchall {:try_start_12 .. :try_end_1c} :catchall_42

    .line 818
    :try_start_1c
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-eqz p1, :cond_2c

    .line 820
    new-instance v5, Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v3, p1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v5

    .line 822
    :cond_2c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2f} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2f} :catch_3a
    .catchall {:try_start_1c .. :try_end_2f} :catchall_37

    .line 833
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_83

    .line 835
    :catch_33
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :catchall_37
    move-exception p1

    move-object v1, v4

    goto :goto_84

    :catch_3a
    move-exception p1

    move-object v2, v1

    move-object v1, v4

    goto :goto_46

    :catch_3e
    move-exception p1

    move-object v2, v1

    move-object v1, v4

    goto :goto_65

    :catchall_42
    move-exception p1

    goto :goto_84

    :catch_44
    move-exception p1

    move-object v2, v1

    .line 828
    :goto_46
    :try_start_46
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 829
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_42

    if-eqz v1, :cond_82

    .line 833
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_7f

    goto :goto_82

    :catch_63
    move-exception p1

    move-object v2, v1

    .line 826
    :goto_65
    :try_start_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_65 .. :try_end_79} :catchall_42

    if-eqz v1, :cond_82

    .line 833
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_82

    .line 835
    :catch_7f
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    move-object v1, v2

    :goto_83
    return-object v1

    :goto_84
    if-eqz v1, :cond_8d

    .line 833
    :try_start_86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8d

    .line 835
    :catch_8a
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_8d
    :goto_8d
    throw p1
.end method

.method public final handleRgbSensorEvent(IIII)V
    .registers 8

    .line 843
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    .line 844
    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v1, v0, :cond_13

    .line 845
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 847
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    :cond_13
    if-lez v0, :cond_4b

    .line 851
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v0, :cond_25

    .line 852
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2e

    .line 853
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_2e

    .line 855
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2e

    .line 856
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 858
    :cond_2e
    :goto_2e
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorValue(IIII)V

    .line 859
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez p1, :cond_4b

    .line 860
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/4 p3, 0x1

    .line 861
    iput-boolean p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 862
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 p4, 0x9

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeMessages(I)V

    .line 863
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v0, 0x2710

    add-long/2addr p1, v0

    invoke-virtual {p0, p4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_4b
    return-void
.end method

.method public final handleRgbSensorValue(IIII)V
    .registers 8

    add-int v0, p1, p2

    add-int/2addr v0, p3

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 944
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x2

    if-gtz v0, :cond_45

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_45

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_36

    goto :goto_45

    .line 962
    :cond_36
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 963
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 964
    iput p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 965
    iput p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 966
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_68

    .line 946
    :cond_45
    :goto_45
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    if-lez v0, :cond_64

    .line 947
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 948
    iput p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 949
    iput p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    int-to-long p1, p4

    .line 950
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    const/4 p1, 0x0

    .line 951
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 954
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 955
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_68

    :cond_64
    add-int/lit8 v0, v0, 0x1

    .line 958
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    :goto_68
    return-void
.end method

.method public final initRgbAverage()V
    .registers 3

    const/4 v0, 0x0

    .line 881
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    const-wide/16 v0, 0x0

    .line 882
    iput-wide v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    const/4 v0, 0x0

    .line 883
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 884
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    return-void
.end method

.method public final isInBoundary()I
    .registers 3

    .line 870
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 872
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 874
    :cond_c
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public final max_num(II)I
    .registers 3

    if-lt p1, p2, :cond_3

    return p1

    :cond_3
    return p2
.end method

.method public final min_num(II)I
    .registers 3

    if-ge p1, p2, :cond_3

    return p1

    :cond_3
    return p2
.end method

.method public final monitorForegroundBrowser(Ljava/lang/String;II)V
    .registers 11

    .line 677
    iget-boolean p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-nez p2, :cond_14a

    iget-boolean p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    if-nez p2, :cond_d

    goto/16 :goto_14a

    :cond_d
    move p2, v0

    .line 692
    :goto_e
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge p2, v2, :cond_21

    .line 693
    aget-object v1, v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move p2, v3

    goto :goto_22

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_21
    move p2, v0

    :goto_22
    move v1, v0

    move v2, v1

    .line 699
    :goto_24
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_35

    .line 700
    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    move v2, v3

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_35
    move v1, v0

    move v4, v1

    .line 705
    :goto_37
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_48

    .line 706
    aget-object v5, v5, v1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    move v4, v3

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_48
    if-eqz v4, :cond_78

    .line 712
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez p1, :cond_165

    .line 713
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 714
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz p1, :cond_59

    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz p1, :cond_59

    move v0, v3

    :cond_59
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v0, :cond_64

    .line 715
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez p1, :cond_64

    .line 716
    invoke-virtual {p0, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 718
    :cond_64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 719
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 720
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr p1, v1

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_165

    .line 723
    :cond_78
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    const-string v4, "com.android.systemui"

    if-eqz v1, :cond_b2

    .line 724
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 725
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_98

    .line 726
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 727
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr p1, v2

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_a9

    .line 730
    :cond_98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 731
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr p1, v2

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 734
    :goto_a9
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz p1, :cond_165

    .line 735
    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_165

    :cond_b2
    if-eqz p2, :cond_ce

    .line 738
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-nez p1, :cond_165

    .line 739
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 740
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 741
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 742
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v1, 0x1f4

    add-long/2addr p1, v1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_165

    :cond_ce
    if-eqz v2, :cond_fd

    .line 745
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-nez p1, :cond_165

    .line 746
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 747
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz p1, :cond_df

    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz p1, :cond_df

    move v0, v3

    :cond_df
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v0, :cond_ea

    .line 749
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez p1, :cond_ea

    .line 750
    invoke-virtual {p0, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 752
    :cond_ea
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 753
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr p1, v1

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_165

    .line 757
    :cond_fd
    iget-boolean p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-eqz p2, :cond_113

    .line 758
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 759
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 760
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v1, 0x7

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_142

    .line 762
    :cond_113
    iget-boolean p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz p2, :cond_142

    .line 763
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 764
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_131

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 766
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 767
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr p1, v2

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_142

    .line 769
    :cond_131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 770
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 771
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr p1, v2

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 774
    :cond_142
    :goto_142
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz p1, :cond_165

    .line 775
    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_165

    .line 678
    :cond_14a
    :goto_14a
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz p1, :cond_165

    .line 679
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 680
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz p1, :cond_157

    .line 681
    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 682
    :cond_157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 683
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_165
    :goto_165
    return-void
.end method

.method public final receive_multi_window_on_intent()V
    .registers 4

    .line 512
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v0, :cond_17

    .line 514
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_17

    .line 516
    :catch_c
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz p0, :cond_17

    const-string p0, "AdaptiveDisplayColorService"

    const-string v0, "failed to onForegroundActivitiesChanged"

    .line 517
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public final receive_screen_off_intent()V
    .registers 3

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 538
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 539
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v1, :cond_c

    .line 540
    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_c
    return-void
.end method

.method public final receive_screen_on_intent()V
    .registers 4

    const/4 v0, 0x0

    .line 524
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    const/4 v1, 0x1

    .line 525
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 526
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v2, :cond_b

    goto :goto_c

    :cond_b
    move v1, v0

    :goto_c
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 528
    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0, v0}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_20

    .line 530
    :catch_15
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz p0, :cond_20

    const-string p0, "AdaptiveDisplayColorService"

    const-string v0, "failed to onForegroundActivitiesChanged"

    .line 531
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public final sendForcedRGB(IIII)V
    .registers 6

    add-int v0, p1, p2

    add-int/2addr v0, p3

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 891
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    int-to-float p1, p2

    div-float/2addr p1, v0

    .line 892
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    int-to-float p1, p3

    div-float/2addr p1, v0

    .line 893
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    int-to-long p1, p4

    .line 894
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    const/4 p1, 0x1

    .line 895
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 897
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method public final sendRgbAverage()V
    .registers 20

    move-object/from16 v1, p0

    .line 1029
    iget-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 1032
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/4 v3, 0x1

    if-lez v0, :cond_a

    goto :goto_b

    :cond_a
    move v0, v3

    :goto_b
    int-to-long v4, v0

    .line 1034
    iget v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    int-to-float v0, v0

    div-float/2addr v6, v0

    .line 1035
    iget v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    div-float/2addr v7, v0

    .line 1036
    iget v8, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    div-float/2addr v8, v0

    .line 1037
    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 1038
    iput v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 1039
    iput v8, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 1040
    iget-wide v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    div-long/2addr v9, v4

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AvgR : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", AvgG : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", AvgB : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", avg lux : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdaptiveDisplayColorService"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    const/4 v5, 0x2

    const/4 v11, 0x0

    const/16 v12, 0xff

    :try_start_5a
    const-string v0, "/sys/class/mdnie/mdnie/sensorRGB"

    .line 1047
    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 1049
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v13, " "

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1050
    aget-object v13, v0, v11

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1051
    aget-object v13, v0, v3

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1052
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_90} :catch_98
    .catchall {:try_start_5a .. :try_end_90} :catchall_95

    .line 1057
    :cond_90
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v0, :cond_a6

    goto :goto_a0

    :catchall_95
    move-exception v0

    goto/16 :goto_350

    :catch_98
    move-exception v0

    .line 1055
    :try_start_99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_95

    .line 1057
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v0, :cond_a6

    .line 1058
    :goto_a0
    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1059
    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1060
    iput v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    .line 1064
    :cond_a6
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v0, :cond_c7

    if-eqz v2, :cond_b9

    .line 1066
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1067
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1068
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    goto :goto_c5

    .line 1070
    :cond_b9
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1071
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1072
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    .line 1074
    :goto_c5
    iput-boolean v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    :cond_c7
    const/4 v0, -0x1

    const-wide/16 v13, 0x4

    cmp-long v13, v9, v13

    if-ltz v13, :cond_2f0

    const-wide/16 v13, 0x3e8

    cmp-long v13, v9, v13

    if-gtz v13, :cond_2f0

    .line 1080
    iget v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    float-to-double v13, v13

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v13, v13, v15

    if-ltz v13, :cond_2f0

    iget v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    float-to-double v13, v13

    cmpg-double v13, v13, v15

    if-ltz v13, :cond_2f0

    iget v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    float-to-double v13, v13

    cmpg-double v13, v13, v15

    if-gez v13, :cond_f0

    goto/16 :goto_2f0

    :cond_f0
    move-wide v13, v9

    :goto_f1
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-eqz v15, :cond_fb

    shr-long/2addr v13, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_f1

    .line 1097
    :cond_fb
    iget-boolean v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v13, :cond_109

    iget-boolean v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v13, :cond_104

    goto :goto_109

    :cond_104
    move v3, v11

    move v5, v3

    move v6, v5

    goto/16 :goto_2ff

    :cond_109
    :goto_109
    if-eqz v2, :cond_112

    .line 1099
    iget v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 1100
    iget v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 1101
    iget v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    goto :goto_11b

    .line 1103
    :cond_112
    iget v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    sub-int/2addr v2, v12

    .line 1104
    iget v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    sub-int/2addr v13, v12

    .line 1105
    iget v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    sub-int/2addr v14, v12

    :goto_11b
    const v15, 0x4b189680    # 1.0E7f

    mul-float v12, v6, v15

    float-to-int v12, v12

    .line 1108
    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    div-int/2addr v12, v5

    mul-float v5, v7, v15

    float-to-int v5, v5

    .line 1109
    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    div-int/2addr v5, v3

    mul-float/2addr v15, v8

    float-to-int v3, v15

    .line 1110
    iget v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    div-int/2addr v3, v15

    .line 1112
    invoke-virtual {v1, v12, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v5

    .line 1113
    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v5

    const/high16 v15, 0x437f0000    # 255.0f

    const/16 v17, 0x4

    const/16 v18, 0x8

    if-ne v5, v12, :cond_19f

    .line 1118
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget v5, v3, v11

    mul-float/2addr v5, v6

    mul-float/2addr v5, v6

    const/4 v12, 0x1

    aget v12, v3, v12

    mul-float/2addr v12, v7

    mul-float/2addr v12, v7

    add-float/2addr v5, v12

    const/4 v12, 0x2

    aget v12, v3, v12

    mul-float/2addr v12, v6

    add-float/2addr v5, v12

    const/4 v12, 0x3

    aget v12, v3, v12

    mul-float/2addr v12, v7

    add-float/2addr v5, v12

    aget v12, v3, v17

    mul-float/2addr v12, v6

    mul-float/2addr v12, v7

    add-float/2addr v5, v12

    const/4 v7, 0x5

    aget v3, v3, v7

    add-float/2addr v5, v3

    mul-float/2addr v5, v15

    float-to-int v3, v5

    .line 1121
    invoke-virtual {v1, v3, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v3

    const/16 v5, 0xff

    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    .line 1123
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/4 v7, 0x6

    aget v7, v5, v7

    mul-float/2addr v7, v6

    mul-float/2addr v7, v6

    const/4 v12, 0x7

    aget v12, v5, v12

    mul-float/2addr v12, v8

    mul-float/2addr v12, v8

    add-float/2addr v7, v12

    aget v12, v5, v18

    mul-float/2addr v12, v6

    add-float/2addr v7, v12

    const/16 v12, 0x9

    aget v12, v5, v12

    mul-float/2addr v12, v8

    add-float/2addr v7, v12

    const/16 v12, 0xa

    aget v12, v5, v12

    mul-float/2addr v12, v6

    mul-float/2addr v12, v8

    add-float/2addr v7, v12

    const/16 v6, 0xb

    aget v5, v5, v6

    add-float/2addr v7, v5

    mul-float/2addr v7, v15

    float-to-int v5, v7

    .line 1126
    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v5

    const/16 v6, 0xff

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v5

    move v6, v5

    move v5, v3

    const/16 v3, 0xff

    goto/16 :goto_273

    :cond_19f
    if-ne v5, v3, :cond_20a

    .line 1129
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v5, 0xc

    aget v5, v3, v5

    mul-float/2addr v5, v6

    mul-float/2addr v5, v6

    const/16 v12, 0xd

    aget v12, v3, v12

    mul-float/2addr v12, v8

    mul-float/2addr v12, v8

    add-float/2addr v5, v12

    const/16 v12, 0xe

    aget v12, v3, v12

    mul-float/2addr v12, v6

    add-float/2addr v5, v12

    const/16 v12, 0xf

    aget v12, v3, v12

    mul-float/2addr v12, v8

    add-float/2addr v5, v12

    const/16 v12, 0x10

    aget v12, v3, v12

    mul-float/2addr v12, v6

    mul-float/2addr v12, v8

    add-float/2addr v5, v12

    const/16 v6, 0x11

    aget v3, v3, v6

    add-float/2addr v5, v3

    mul-float/2addr v5, v15

    float-to-int v3, v5

    .line 1132
    invoke-virtual {v1, v3, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v3

    const/16 v5, 0xff

    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    .line 1134
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v6, 0x12

    aget v6, v5, v6

    mul-float/2addr v6, v7

    mul-float/2addr v6, v7

    const/16 v12, 0x13

    aget v12, v5, v12

    mul-float/2addr v12, v8

    mul-float/2addr v12, v8

    add-float/2addr v6, v12

    const/16 v12, 0x14

    aget v12, v5, v12

    mul-float/2addr v12, v7

    add-float/2addr v6, v12

    const/16 v12, 0x15

    aget v12, v5, v12

    mul-float/2addr v12, v8

    add-float/2addr v6, v12

    const/16 v12, 0x16

    aget v12, v5, v12

    mul-float/2addr v12, v7

    mul-float/2addr v12, v8

    add-float/2addr v6, v12

    const/16 v7, 0x17

    aget v5, v5, v7

    add-float/2addr v6, v5

    mul-float/2addr v6, v15

    float-to-int v5, v6

    .line 1137
    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v5

    const/16 v6, 0xff

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v5

    const/16 v6, 0xff

    goto :goto_273

    .line 1142
    :cond_20a
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v5, 0x18

    aget v5, v3, v5

    mul-float/2addr v5, v6

    mul-float/2addr v5, v6

    const/16 v12, 0x19

    aget v12, v3, v12

    mul-float/2addr v12, v7

    mul-float/2addr v12, v7

    add-float/2addr v5, v12

    const/16 v12, 0x1a

    aget v12, v3, v12

    mul-float/2addr v12, v6

    add-float/2addr v5, v12

    const/16 v12, 0x1b

    aget v12, v3, v12

    mul-float/2addr v12, v7

    add-float/2addr v5, v12

    const/16 v12, 0x1c

    aget v12, v3, v12

    mul-float/2addr v12, v6

    mul-float/2addr v12, v7

    add-float/2addr v5, v12

    const/16 v6, 0x1d

    aget v3, v3, v6

    add-float/2addr v5, v3

    mul-float/2addr v5, v15

    float-to-int v3, v5

    .line 1145
    invoke-virtual {v1, v3, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v3

    const/16 v5, 0xff

    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    .line 1149
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v6, 0x1e

    aget v6, v5, v6

    mul-float/2addr v6, v7

    mul-float/2addr v6, v7

    const/16 v12, 0x1f

    aget v12, v5, v12

    mul-float/2addr v12, v8

    mul-float/2addr v12, v8

    add-float/2addr v6, v12

    const/16 v12, 0x20

    aget v12, v5, v12

    mul-float/2addr v12, v7

    add-float/2addr v6, v12

    const/16 v12, 0x21

    aget v12, v5, v12

    mul-float/2addr v12, v8

    add-float/2addr v6, v12

    const/16 v12, 0x22

    aget v12, v5, v12

    mul-float/2addr v12, v7

    mul-float/2addr v12, v8

    add-float/2addr v6, v12

    const/16 v7, 0x23

    aget v5, v5, v7

    add-float/2addr v6, v5

    mul-float/2addr v6, v15

    float-to-int v5, v6

    .line 1152
    invoke-virtual {v1, v5, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v5

    const/16 v6, 0xff

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v5

    move v6, v5

    const/16 v5, 0xff

    :goto_273
    add-int/2addr v3, v2

    add-int/2addr v5, v13

    add-int/2addr v6, v14

    const-wide/16 v7, 0x190

    cmp-long v2, v9, v7

    if-gez v2, :cond_2ff

    .line 1161
    iget-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v2, :cond_2b8

    rsub-int/lit8 v2, v0, 0x8

    .line 1162
    iget v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    mul-int/2addr v7, v2

    mul-int/2addr v3, v0

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x4

    div-int/lit8 v7, v7, 0x8

    .line 1163
    invoke-virtual {v1, v7, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v3

    const/16 v7, 0xff

    invoke-virtual {v1, v3, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    .line 1165
    iget v8, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    mul-int/2addr v8, v2

    mul-int/2addr v5, v0

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x8

    .line 1166
    invoke-virtual {v1, v8, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v5

    invoke-virtual {v1, v5, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v5

    .line 1168
    iget v8, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    mul-int/2addr v2, v8

    mul-int/2addr v0, v6

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x8

    .line 1169
    invoke-virtual {v1, v2, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v0

    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v6

    goto :goto_2ff

    :cond_2b8
    const/16 v7, 0xff

    rsub-int/lit8 v2, v0, 0x8

    .line 1171
    iget v8, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    mul-int/2addr v8, v2

    mul-int/2addr v3, v0

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x8

    .line 1172
    invoke-virtual {v1, v8, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v3

    invoke-virtual {v1, v3, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    .line 1174
    iget v8, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    mul-int/2addr v8, v2

    mul-int/2addr v5, v0

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x8

    .line 1175
    invoke-virtual {v1, v8, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v5

    invoke-virtual {v1, v5, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v5

    .line 1177
    iget v8, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    mul-int/2addr v2, v8

    mul-int/2addr v0, v6

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x8

    .line 1178
    invoke-virtual {v1, v2, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v0

    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v6

    goto :goto_2ff

    :cond_2f0
    :goto_2f0
    if-eqz v2, :cond_2f9

    .line 1082
    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 1083
    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 1084
    iget v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    goto :goto_2ff

    .line 1086
    :cond_2f9
    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1087
    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1088
    iget v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    :cond_2ff
    :goto_2ff
    if-eqz v3, :cond_34f

    if-eqz v5, :cond_34f

    if-eqz v6, :cond_34f

    .line 1198
    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 1199
    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 1200
    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 1201
    iput v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 1203
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v0, :cond_336

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scrR : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scrG : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scrB : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_336
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v0, :cond_342

    iget v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v5, v2, :cond_342

    iget v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v6, v2, :cond_34f

    .line 1207
    :cond_342
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 1208
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 1209
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 1210
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V

    :cond_34f
    return-void

    .line 1057
    :goto_350
    iget-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v2, :cond_35c

    const/16 v2, 0xff

    .line 1058
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1059
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1060
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    .line 1062
    :cond_35c
    throw v0
.end method

.method public final setAverageValue(IIII)V
    .registers 9

    add-int v0, p1, p2

    add-int/2addr v0, p3

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 908
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x2

    if-gtz v0, :cond_3f

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_3f

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_36

    goto :goto_3f

    .line 931
    :cond_36
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 932
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_84

    .line 909
    :cond_3f
    :goto_3f
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 910
    iget p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 911
    iget p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    .line 912
    iget-wide v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    int-to-long p3, p4

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 913
    iget p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iput p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v2, 0x14

    if-lt p3, v2, :cond_6d

    int-to-float v2, p3

    div-float/2addr v0, v2

    .line 916
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    int-to-float v0, p3

    div-float/2addr p1, v0

    .line 917
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    int-to-float p1, p3

    div-float/2addr p2, p1

    .line 918
    iput p2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 920
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 923
    :cond_6d
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    if-nez p1, :cond_84

    .line 924
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 925
    iput-boolean p4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 926
    iget-object p3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 927
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 p3, 0x2710

    add-long/2addr p1, p3

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_84
    :goto_84
    return-void
.end method

.method public final setBrowserMode()V
    .registers 3

    .line 1284
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v1, :cond_15

    .line 1285
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1286
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_15
    return-void
.end method

.method public final setEbookMode()V
    .registers 3

    .line 1272
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v1, :cond_15

    .line 1273
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1274
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_15
    return-void
.end method

.method public final setVideoMode()V
    .registers 3

    .line 1278
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v1, :cond_14

    .line 1279
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1280
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_14
    return-void
.end method

.method public final setting_is_changed()V
    .registers 5

    .line 545
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_curtain"

    const/4 v2, 0x0

    .line 547
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    const-string v1, "high_contrast"

    .line 548
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1f

    move v1, v3

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    const-string v1, "color_blind"

    .line 549
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2c

    move v1, v3

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    const-string/jumbo v1, "screen_mode_automatic_setting"

    .line 550
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3a

    move v1, v3

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    const-string v1, "blue_light_filter"

    .line 551
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_47

    move v0, v3

    goto :goto_48

    :cond_47
    move v0, v2

    :goto_48
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    .line 552
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v1, :cond_5e

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v1, :cond_5e

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v1, :cond_5e

    if-nez v0, :cond_5e

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v0, :cond_5e

    move v0, v3

    goto :goto_5f

    :cond_5e
    move v0, v2

    :goto_5f
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    .line 553
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v1, :cond_68

    if-eqz v0, :cond_68

    goto :goto_69

    :cond_68
    move v3, v2

    :goto_69
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v3, :cond_89

    .line 556
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_76

    .line 557
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 559
    :cond_76
    :try_start_76
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7c} :catch_7d

    goto :goto_99

    .line 561
    :catch_7d
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz p0, :cond_99

    const-string p0, "AdaptiveDisplayColorService"

    const-string v0, "failed to onForegroundActivitiesChanged"

    .line 562
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 566
    :cond_89
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_92

    .line 567
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 569
    :cond_92
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_99

    .line 570
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    :cond_99
    :goto_99
    return-void
.end method

.method public final terminateScrRGB()V
    .registers 3

    .line 1296
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v1, :cond_14

    .line 1297
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1298
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_14
    return-void
.end method

.method public final terminateVideoMode()V
    .registers 3

    .line 1290
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v1, :cond_14

    .line 1291
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1292
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    :cond_14
    return-void
.end method

.method public final updateScreen()V
    .registers 6

    :try_start_0
    const-string v0, "SurfaceFlinger"

    .line 1329
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    .line 1332
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1333
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3ee

    const/4 v4, 0x0

    .line 1334
    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_2a

    .line 1338
    :catch_1f
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz p0, :cond_2a

    const-string p0, "AdaptiveDisplayColorService"

    const-string v0, "failed to updateScreen"

    .line 1339
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void
.end method
