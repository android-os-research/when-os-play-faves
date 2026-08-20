.class public Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.super Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;,
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field public static final COUNTRYISO_CODE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "SemMdnieManagerService"

.field public static final isBangladeshCountryCode:Z

.field public static final isIndiaCountryCode:Z

.field public static final isMaldivesCountryCode:Z

.field public static final isNepalCountryCode:Z

.field public static final isSrilankaCountryCode:Z


# instance fields
.field public final AOD_SHOW_STATE_SETTINGS:Ljava/lang/String;

.field public final COLOR_LENS_MAX_COLOR:I

.field public final COLOR_LENS_MAX_LEVEL:I

.field public final DEBUG:Z

.field public final FACTORY_DEFAULT_INDEX_VALUE:I

.field public final FACTORY_WHITE_INDEX_SIZE:I

.field public final LCD_SRGB_MODE:I

.field public final MDNIE_SCREEN_ADJUSTMENT_MODE:Ljava/lang/String;

.field public final MDNIE_SUPPORT_FUNCTION:I

.field public NIGHT_MODE_MAX_INDEX:I

.field public final NIGHT_MODE_NEW_SYSFS_USE:Z

.field public final PRESET_WHITE_INDEX_SIZE:I

.field public final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field public final SCREEN_MODE_SETTING:Ljava/lang/String;

.field public final SEC_DISPLAY_PRESET_INDEX:Ljava/lang/String;

.field public final SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

.field public final SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

.field public final SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

.field public final SYSFS_MDNIE_BYPASS_NODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_BYPASS_NODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_COLOR_LENS:Ljava/lang/String;

.field public final SYSFS_MDNIE_COLOR_LENS_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_CONTENT_MODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

.field public final SYSFS_MDNIE_FACTORY_MDNIE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_LIGHT_NOTIFICATION:Ljava/lang/String;

.field public final SYSFS_MDNIE_LIGHT_NOTIFICATION_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field public final SYSFS_MDNIE_NEGATIVE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_NIGHT_MODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_NIGHT_READING_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field public final SYSFS_MDNIE_OUTDOOR_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field public final SYSFS_MDNIE_PLAYSPEED_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_SCREEN_MODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field public final SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

.field public final SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

.field public final SYSFS_MDNIE_WHITE_RGB_SUB:Ljava/lang/String;

.field public final WEAKNESS_SOLUTION_FUNCTION:I

.field public adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

.field public afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

.field public mAdaptiveBlueLightFilterSupported:Z

.field public mAlwaysOnDisplayEnabled:Z

.field public mAutoModeEnabled:Z

.field public mBlueFilterIndex:I

.field public mBlueLightFilterEnabled:Z

.field public mBrowserScenarioEnabled:Z

.field public mColorBlindEnabled:Z

.field public mColorVision:Z

.field public mColorVisionColor:I

.field public mColorVisionLevel:I

.field public mContentMode:I

.field public final mContext:Landroid/content/Context;

.field public mCurtainModeIsRunning:Z

.field public mCustomScrBIndex:I

.field public mCustomScrGIndex:I

.field public mCustomScrRIndex:I

.field public mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayOn:Z

.field public mDisplayState:I

.field public mDisplayStatePrev:I

.field public mEbookScenarioEnabled:Z

.field public mFactoryScrBIndex:I

.field public mFactoryScrBIndexSub:I

.field public mFactoryScrGIndex:I

.field public mFactoryScrGIndexSub:I

.field public mFactoryScrIndex:I

.field public mFactoryScrIndexSub:I

.field public mFactoryScrRIndex:I

.field public mFactoryScrRIndexSub:I

.field public final mLock:Ljava/lang/Object;

.field public mMdnieCustomized:Z

.field public mMdnieFactorySupported:Z

.field public mMdnieWhiteRGBSupported:Z

.field public mMdnieWorkingCondition:Z

.field public mNegativeColorEnabled:Z

.field public mNightDimModeEnabled:Z

.field public mNightDimSupported:Z

.field public mNightMode:Z

.field public mNightModeIndex:I

.field public mPresetAdjustWhiteRGB:[[[I

.field public mPresetScrIndex:I

.field public mPrevScreenModeForReadingMode:I

.field public mReadingModeEnabled:Z

.field public mScreenCurtainEnabled:Z

.field public mScreenMode:I

.field public mScreenModeForReadingMode:I

.field public mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

.field public mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

.field public mSupportBlueFilter:Z

.field public mSupportColorAdjustment:Z

.field public mSupportContentMode:Z

.field public mSupportContentModeGame:Z

.field public mSupportContentModeSWA:Z

.field public mSupportContentModeVideoEnhance:Z

.field public mSupportGrayscale:Z

.field public mSupportHDR:Z

.field public mSupportHMT:Z

.field public mSupportLightNotificationMode:Z

.field public mSupportNegative:Z

.field public mSupportScreeenReadingMode:Z

.field public mSupportScreenCurtain:Z

.field public mSupportScreenMode:Z

.field public mUseAdaptiveDisplayColorServiceConfig:Z

.field public mUseAfterimageCompensationServiceConfig:Z

.field public mWorkBlueFilter:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlwaysOnDisplayEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoModeEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayStatePrev(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightModeIndex(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportScreeenReadingMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAlwaysOnDisplayEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAutoModeEnabled(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayOn(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayState(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayStatePrev(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMdnieWorkingCondition(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNightMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckScreenMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetNightDimOffMode(Lcom/samsung/android/hardware/display/SemMdnieManagerService;ZI)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightDimOffMode(ZI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetting_is_changed(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsysfsWrite(Ljava/lang/String;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.csc.countryiso_code"

    .line 228
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    const-string v1, "IN"

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isIndiaCountryCode:Z

    const-string v1, "BD"

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isBangladeshCountryCode:Z

    const-string v1, "NP"

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isNepalCountryCode:Z

    const-string v1, "LK"

    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isSrilankaCountryCode:Z

    const-string v1, "MV"

    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isMaldivesCountryCode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;-><init>()V

    .line 86
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->DEBUG:Z

    const/4 v2, 0x0

    .line 92
    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 93
    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string/jumbo v3, "screen_mode_automatic_setting"

    .line 95
    iput-object v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v4, "screen_mode_setting"

    .line 96
    iput-object v4, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string v5, "aod_show_state"

    .line 97
    iput-object v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->AOD_SHOW_STATE_SETTINGS:Ljava/lang/String;

    const-string/jumbo v6, "sec_display_temperature_red"

    .line 98
    iput-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

    const-string/jumbo v7, "sec_display_temperature_green"

    .line 99
    iput-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

    const-string/jumbo v8, "sec_display_temperature_blue"

    .line 100
    iput-object v8, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

    const-string/jumbo v9, "sec_display_preset_index"

    .line 101
    iput-object v9, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_PRESET_INDEX:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/accessibility"

    .line 103
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/mode"

    .line 104
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/scenario"

    .line 105
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/negative"

    .line 107
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/outdoor"

    .line 108
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/playspeed"

    .line 109
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/night_mode"

    .line 110
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/color_lens"

    .line 111
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_COLOR_LENS:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/whiteRGB"

    .line 112
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/light_notification"

    .line 113
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_LIGHT_NOTIFICATION:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/accessibility"

    .line 114
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/mode"

    .line 115
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/scenario"

    .line 116
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/negative"

    .line 118
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/outdoor"

    .line 119
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/playspeed"

    .line 120
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/night_mode"

    .line 121
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/color_lens"

    .line 122
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_COLOR_LENS_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/whiteRGB"

    .line 123
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie1/light_notification"

    .line 124
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_LIGHT_NOTIFICATION_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/mdnie/mdnie/bypass"

    .line 126
    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_BYPASS_NODE:Ljava/lang/String;

    const-string v11, "/sys/class/mdnie/mdnie1/bypass"

    .line 127
    iput-object v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_BYPASS_NODE_SUB:Ljava/lang/String;

    const-string v12, "/sys/class/lcd/panel/reading_mode"

    .line 129
    iput-object v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_READING_MODE:Ljava/lang/String;

    const-string v12, "/efs/FactoryApp/mdnie"

    .line 131
    iput-object v12, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

    const-string v13, "/efs/FactoryApp/mdnie1"

    .line 132
    iput-object v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE_SUB:Ljava/lang/String;

    const/4 v13, 0x3

    .line 134
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->LCD_SRGB_MODE:I

    const/16 v14, 0xc

    .line 135
    iput v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COLOR_LENS_MAX_COLOR:I

    const/16 v14, 0x9

    .line 136
    iput v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->COLOR_LENS_MAX_LEVEL:I

    .line 138
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    const-string v14, "0"

    .line 140
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iput v15, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    .line 142
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->WEAKNESS_SOLUTION_FUNCTION:I

    .line 145
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_FOR_TFT"

    invoke-virtual {v14, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_NEW_SYSFS_USE:Z

    .line 148
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v14, "SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_SCREEN_ADJUSTMENT_MODE"

    invoke-virtual {v2, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SCREEN_ADJUSTMENT_MODE:Ljava/lang/String;

    const/4 v2, 0x7

    .line 150
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FACTORY_WHITE_INDEX_SIZE:I

    const/4 v2, 0x0

    .line 151
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FACTORY_DEFAULT_INDEX_VALUE:I

    const/4 v14, 0x5

    .line 153
    iput v14, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->PRESET_WHITE_INDEX_SIZE:I

    .line 155
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    .line 156
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    .line 157
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    .line 158
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeSWA:Z

    .line 159
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 160
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 161
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    .line 162
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    .line 163
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    .line 164
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    .line 165
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    .line 166
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    .line 167
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    .line 168
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    const/4 v13, 0x1

    .line 170
    iput-boolean v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 171
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    const/4 v13, -0x1

    .line 173
    iput v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    .line 174
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 176
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieCustomized:Z

    .line 180
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 181
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 183
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVision:Z

    .line 184
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionColor:I

    .line 185
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionLevel:I

    .line 187
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    .line 189
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 191
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    .line 192
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    .line 193
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    .line 194
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    .line 195
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    .line 196
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    .line 197
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndexSub:I

    .line 198
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndexSub:I

    .line 199
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndexSub:I

    .line 201
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    .line 202
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    .line 203
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    .line 205
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAdaptiveBlueLightFilterSupported:Z

    .line 206
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    .line 207
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueLightFilterEnabled:Z

    .line 208
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    .line 209
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    .line 214
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    .line 215
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 216
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenCurtainEnabled:Z

    .line 217
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNegativeColorEnabled:Z

    .line 218
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorBlindEnabled:Z

    .line 219
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    .line 220
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingModeEnabled:Z

    .line 221
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEbookScenarioEnabled:Z

    .line 222
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBrowserScenarioEnabled:Z

    .line 223
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    .line 225
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 226
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    new-array v13, v14, [[[I

    new-array v2, v14, [[I

    move-object/from16 v18, v11

    const/4 v14, 0x3

    new-array v11, v14, [I

    .line 235
    fill-array-data v11, :array_490

    const/16 v16, 0x0

    aput-object v11, v2, v16

    new-array v11, v14, [I

    fill-array-data v11, :array_49a

    const/16 v16, 0x1

    aput-object v11, v2, v16

    new-array v11, v14, [I

    fill-array-data v11, :array_4a4

    const/16 v16, 0x2

    aput-object v11, v2, v16

    new-array v11, v14, [I

    fill-array-data v11, :array_4ae

    aput-object v11, v2, v14

    new-array v11, v14, [I

    fill-array-data v11, :array_4b8

    const/4 v14, 0x4

    aput-object v11, v2, v14

    const/4 v11, 0x0

    aput-object v2, v13, v11

    const/4 v2, 0x5

    new-array v14, v2, [[I

    move-object/from16 v19, v10

    const/4 v2, 0x3

    new-array v10, v2, [I

    fill-array-data v10, :array_4c2

    aput-object v10, v14, v11

    new-array v10, v2, [I

    fill-array-data v10, :array_4cc

    const/4 v11, 0x1

    aput-object v10, v14, v11

    new-array v10, v2, [I

    fill-array-data v10, :array_4d6

    aput-object v10, v14, v16

    new-array v10, v2, [I

    fill-array-data v10, :array_4e0

    aput-object v10, v14, v2

    new-array v10, v2, [I

    fill-array-data v10, :array_4ea

    const/16 v17, 0x4

    aput-object v10, v14, v17

    aput-object v14, v13, v11

    const/4 v10, 0x5

    new-array v14, v10, [[I

    new-array v10, v2, [I

    fill-array-data v10, :array_4f4

    const/16 v17, 0x0

    aput-object v10, v14, v17

    new-array v10, v2, [I

    fill-array-data v10, :array_4fe

    aput-object v10, v14, v11

    new-array v10, v2, [I

    fill-array-data v10, :array_508

    aput-object v10, v14, v16

    new-array v10, v2, [I

    fill-array-data v10, :array_512

    aput-object v10, v14, v2

    new-array v10, v2, [I

    fill-array-data v10, :array_51c

    const/4 v11, 0x4

    aput-object v10, v14, v11

    aput-object v14, v13, v16

    const/4 v10, 0x5

    new-array v11, v10, [[I

    new-array v10, v2, [I

    fill-array-data v10, :array_526

    const/4 v14, 0x0

    aput-object v10, v11, v14

    new-array v10, v2, [I

    fill-array-data v10, :array_530

    const/4 v14, 0x1

    aput-object v10, v11, v14

    new-array v10, v2, [I

    fill-array-data v10, :array_53a

    aput-object v10, v11, v16

    new-array v10, v2, [I

    fill-array-data v10, :array_544

    aput-object v10, v11, v2

    new-array v10, v2, [I

    fill-array-data v10, :array_54e

    const/4 v14, 0x4

    aput-object v10, v11, v14

    aput-object v11, v13, v2

    const/4 v10, 0x5

    new-array v10, v10, [[I

    new-array v11, v2, [I

    fill-array-data v11, :array_558

    const/4 v14, 0x0

    aput-object v11, v10, v14

    new-array v11, v2, [I

    fill-array-data v11, :array_562

    const/4 v14, 0x1

    aput-object v11, v10, v14

    new-array v11, v2, [I

    fill-array-data v11, :array_56c

    aput-object v11, v10, v16

    new-array v11, v2, [I

    fill-array-data v11, :array_576

    aput-object v11, v10, v2

    new-array v11, v2, [I

    fill-array-data v11, :array_580

    const/4 v2, 0x4

    aput-object v11, v10, v2

    aput-object v10, v13, v2

    iput-object v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[[I

    .line 476
    new-instance v2, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    .line 1268
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    .line 246
    iput-object v1, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 250
    new-instance v10, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-direct {v10, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    iput-object v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    and-int/lit8 v10, v15, 0x1

    if-eqz v10, :cond_257

    const/4 v10, 0x1

    goto :goto_258

    :cond_257
    const/4 v10, 0x0

    .line 252
    :goto_258
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    and-int/lit8 v10, v15, 0x2

    if-eqz v10, :cond_260

    const/4 v10, 0x1

    goto :goto_261

    :cond_260
    const/4 v10, 0x0

    .line 253
    :goto_261
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    and-int/lit8 v10, v15, 0x4

    if-eqz v10, :cond_269

    const/4 v10, 0x1

    goto :goto_26a

    :cond_269
    const/4 v10, 0x0

    .line 254
    :goto_26a
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    and-int/lit8 v10, v15, 0x8

    if-eqz v10, :cond_272

    const/4 v10, 0x1

    goto :goto_273

    :cond_272
    const/4 v10, 0x0

    .line 255
    :goto_273
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeSWA:Z

    and-int/lit8 v10, v15, 0x10

    if-eqz v10, :cond_27b

    const/4 v10, 0x1

    goto :goto_27c

    :cond_27b
    const/4 v10, 0x0

    .line 256
    :goto_27c
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    and-int/lit8 v10, v15, 0x20

    if-eqz v10, :cond_284

    const/4 v10, 0x1

    goto :goto_285

    :cond_284
    const/4 v10, 0x0

    .line 257
    :goto_285
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    and-int/lit16 v10, v15, 0x100

    if-eqz v10, :cond_28d

    const/4 v10, 0x1

    goto :goto_28e

    :cond_28d
    const/4 v10, 0x0

    .line 258
    :goto_28e
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    and-int/lit16 v10, v15, 0x200

    if-eqz v10, :cond_296

    const/4 v10, 0x1

    goto :goto_297

    :cond_296
    const/4 v10, 0x0

    .line 259
    :goto_297
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    and-int/lit16 v10, v15, 0x400

    if-eqz v10, :cond_29f

    const/4 v10, 0x1

    goto :goto_2a0

    :cond_29f
    const/4 v10, 0x0

    .line 260
    :goto_2a0
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    and-int/lit16 v10, v15, 0x800

    if-eqz v10, :cond_2a8

    const/4 v10, 0x1

    goto :goto_2a9

    :cond_2a8
    const/4 v10, 0x0

    .line 261
    :goto_2a9
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    and-int/lit16 v10, v15, 0x1000

    if-eqz v10, :cond_2b1

    const/4 v10, 0x1

    goto :goto_2b2

    :cond_2b1
    const/4 v10, 0x0

    .line 262
    :goto_2b2
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    and-int/lit16 v10, v15, 0x2000

    if-eqz v10, :cond_2ba

    const/4 v10, 0x1

    goto :goto_2bb

    :cond_2ba
    const/4 v10, 0x0

    .line 263
    :goto_2bb
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    and-int/lit16 v10, v15, 0x4000

    if-eqz v10, :cond_2c3

    const/4 v10, 0x1

    goto :goto_2c4

    :cond_2c3
    const/4 v10, 0x0

    .line 264
    :goto_2c4
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    const v10, 0x8000

    and-int/2addr v10, v15

    if-eqz v10, :cond_2ce

    const/4 v10, 0x1

    goto :goto_2cf

    :cond_2ce
    const/4 v10, 0x0

    .line 265
    :goto_2cf
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    const/4 v10, 0x0

    .line 267
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    .line 269
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v13, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    const/4 v14, -0x2

    invoke-virtual {v2, v11, v10, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 270
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v11, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v6, v10, v11, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 271
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v6, v10, v7, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 272
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v6, v10, v7, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 273
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v6, v10, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v6, "blue_light_filter_night_dim"

    .line 274
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    const/4 v8, -0x1

    invoke-virtual {v2, v6, v10, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 275
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v2, v5, v10, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 277
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    .line 278
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_ON"

    .line 279
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_OFF"

    .line 280
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.USER_PRESENT"

    .line 281
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    new-instance v5, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver-IA;)V

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_347

    const/4 v2, 0x1

    .line 285
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    .line 286
    :cond_347
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    iget-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    and-int/2addr v2, v5

    if-eqz v2, :cond_351

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setFactoryWhiteRGB()V

    .line 289
    :cond_351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SYSFS_MDNIE_FACTORY_MDNIE : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mMdnieWhiteRGBSupported - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SemMdnieManagerService"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_380

    const/4 v2, 0x1

    goto :goto_381

    :cond_380
    const/4 v2, 0x0

    :goto_381
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v4, v3, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 294
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_395

    const/4 v2, 0x4

    .line 295
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 298
    :cond_395
    iget v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_39c

    .line 299
    iput v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 302
    :cond_39c
    iput v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    const/4 v2, 0x1

    .line 304
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 305
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    .line 307
    iget v4, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setScreenMode(I)Z

    .line 308
    iget v4, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setContentMode(I)Z

    .line 310
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v4, v6, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3bb

    .line 311
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAdaptiveBlueLightFilterSupported:Z

    .line 312
    :cond_3bb
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_LCD_CONFIG_NIGHT_DIM"

    invoke-virtual {v4, v6, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3c9

    .line 313
    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    .line 315
    :cond_3c9
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAdaptiveBlueLightFilterSupported:Z

    if-eqz v2, :cond_3d6

    iget-boolean v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    if-eqz v3, :cond_3d6

    const/16 v2, 0x132

    .line 316
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    goto :goto_3e5

    :cond_3d6
    if-eqz v2, :cond_3e1

    .line 317
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimSupported:Z

    if-nez v2, :cond_3e1

    const/16 v2, 0x66

    .line 318
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    goto :goto_3e5

    :cond_3e1
    const/16 v2, 0xb

    .line 320
    iput v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    .line 323
    :goto_3e5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemMdnieMdnieManager Night mode Index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110153

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v2, :cond_411

    .line 327
    new-instance v2, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {v2, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 329
    :cond_411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemMdnieMdnieManager EAD config : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    .line 333
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_45d

    .line 334
    new-instance v2, Ljava/io/File;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44c

    const/4 v2, 0x1

    .line 335
    invoke-static {v3, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_44d

    :cond_44c
    const/4 v2, 0x1

    .line 336
    :goto_44d
    new-instance v3, Ljava/io/File;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_45d

    .line 337
    invoke-static {v4, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 340
    :cond_45d
    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    if-eqz v2, :cond_46e

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_46e

    .line 341
    new-instance v2, Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {v2, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    .line 343
    :cond_46e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemMdnieMdnieManager AFC config : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAfterimageCompensationServiceConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->registerProcessObserver()V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    const-string v0, "SemMdnieMdnieManagerService Init Success"

    .line 347
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_490
    .array-data 4
        0x0
        -0x6
        -0x14
    .end array-data

    :array_49a
    .array-data 4
        0x0
        -0x3
        -0xa
    .end array-data

    :array_4a4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_4ae
    .array-data 4
        -0x7
        -0x5
        0x0
    .end array-data

    :array_4b8
    .array-data 4
        -0xe
        -0xa
        0x0
    .end array-data

    :array_4c2
    .array-data 4
        0x0
        -0x3
        -0x14
    .end array-data

    :array_4cc
    .array-data 4
        0x0
        0x0
        -0xa
    .end array-data

    :array_4d6
    .array-data 4
        -0x3
        0x0
        -0x3
    .end array-data

    :array_4e0
    .array-data 4
        -0x7
        -0x2
        0x0
    .end array-data

    :array_4ea
    .array-data 4
        -0xe
        -0x7
        0x0
    .end array-data

    :array_4f4
    .array-data 4
        0x0
        0x0
        -0x14
    .end array-data

    :array_4fe
    .array-data 4
        -0x3
        0x0
        -0xd
    .end array-data

    :array_508
    .array-data 4
        -0x6
        0x0
        -0x6
    .end array-data

    :array_512
    .array-data 4
        -0x8
        0x0
        -0x1
    .end array-data

    :array_51c
    .array-data 4
        -0xe
        -0x4
        0x0
    .end array-data

    :array_526
    .array-data 4
        -0x3
        0x0
        -0x17
    .end array-data

    :array_530
    .array-data 4
        -0x6
        0x0
        -0x10
    .end array-data

    :array_53a
    .array-data 4
        -0x9
        0x0
        -0x9
    .end array-data

    :array_544
    .array-data 4
        -0xb
        0x0
        -0x4
    .end array-data

    :array_54e
    .array-data 4
        -0xe
        -0x1
        0x0
    .end array-data

    :array_558
    .array-data 4
        -0x6
        0x0
        -0x1a
    .end array-data

    :array_562
    .array-data 4
        -0x9
        0x0
        -0x13
    .end array-data

    :array_56c
    .array-data 4
        -0xc
        0x0
        -0xc
    .end array-data

    :array_576
    .array-data 4
        -0xe
        0x0
        -0x7
    .end array-data

    :array_580
    .array-data 4
        -0x10
        0x0
        -0x2
    .end array-data
.end method

.method public static sysfsWrite(Ljava/lang/String;I)Z
    .registers 5

    .line 1117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3e

    const/4 p0, 0x0

    .line 1121
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_2e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2a

    .line 1126
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1127
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_26} :catch_28

    const/4 p0, 0x1

    return p0

    :catch_28
    move-exception p0

    goto :goto_33

    :catch_2a
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_33

    :catch_2e
    move-exception p1

    .line 1123
    :try_start_2f
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_2a

    return v1

    .line 1129
    :goto_33
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1131
    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    .line 1133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    :goto_3e
    return v1
.end method

.method public static sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1146
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_21

    :try_start_c
    const-string p0, "UTF-8"

    .line 1151
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1152
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_1e

    const/4 p0, 0x1

    return p0

    :catch_1e
    move-exception p0

    move-object v1, v2

    goto :goto_28

    :catch_21
    move-exception p0

    goto :goto_28

    :catch_23
    move-exception p0

    .line 1148
    :try_start_24
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_21

    return v0

    .line 1154
    :goto_28
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1156
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p0

    .line 1158
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    return v0
.end method

.method public static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .registers 7

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    .line 1199
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, p2, v2

    .line 1200
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v3, p2, v3

    .line 1201
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget v3, p2, v3

    .line 1202
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    aget v3, p2, v3

    .line 1203
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    aget v3, p2, v3

    .line 1204
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    aget v3, p2, v3

    .line 1205
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    aget v3, p2, v3

    .line 1206
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    aget p1, p2, p1

    .line 1207
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1210
    :try_start_89
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_93} :catch_a9
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_93} :catch_a7

    :try_start_93
    const-string p0, "UTF-8"

    .line 1215
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1216
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_a3} :catch_a4

    return v2

    :catch_a4
    move-exception p0

    move-object p2, v0

    goto :goto_ae

    :catch_a7
    move-exception p0

    goto :goto_ae

    :catch_a9
    move-exception p0

    .line 1212
    :try_start_aa
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_a7

    return v1

    .line 1218
    :goto_ae
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1220
    :try_start_b1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_b9

    :catch_b5
    move-exception p0

    .line 1222
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b9
    return v1
.end method

.method public static sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z
    .registers 7

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    .line 1235
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, p2, v2

    .line 1236
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v3, p2, v3

    .line 1237
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget v3, p2, v3

    .line 1238
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    aget v3, p2, v3

    .line 1239
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    aget v3, p2, v3

    .line 1240
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    aget v3, p2, v3

    .line 1241
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    aget v3, p2, v3

    .line 1242
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    aget v3, p2, v3

    .line 1243
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    aget v3, p2, v3

    .line 1244
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    aget v3, p2, v3

    .line 1245
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xb

    aget p1, p2, p1

    .line 1246
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1249
    :try_start_b3
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_bd
    .catch Ljava/io/FileNotFoundException; {:try_start_b3 .. :try_end_bd} :catch_d3
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_bd} :catch_d1

    :try_start_bd
    const-string p0, "UTF-8"

    .line 1254
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1255
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_cd} :catch_ce

    return v2

    :catch_ce
    move-exception p0

    move-object p2, v0

    goto :goto_d8

    :catch_d1
    move-exception p0

    goto :goto_d8

    :catch_d3
    move-exception p0

    .line 1251
    :try_start_d4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d1

    return v1

    .line 1257
    :goto_d8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1259
    :try_start_db
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_e3

    :catch_df
    move-exception p0

    .line 1261
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e3
    return v1
.end method

.method public static sysfsWrite_color_blind(Ljava/lang/String;I[I)Z
    .registers 7

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget v3, p2, v3

    .line 1171
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    aget v3, p2, v3

    .line 1172
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    aget p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1175
    :try_start_89
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_93} :catch_a9
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_93} :catch_a7

    :try_start_93
    const-string p0, "UTF-8"

    .line 1180
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1181
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_a3} :catch_a4

    return v2

    :catch_a4
    move-exception p0

    move-object p2, v0

    goto :goto_ae

    :catch_a7
    move-exception p0

    goto :goto_ae

    :catch_a9
    move-exception p0

    .line 1177
    :try_start_aa
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_a7

    return v1

    .line 1183
    :goto_ae
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1185
    :try_start_b1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_b9

    :catch_b5
    move-exception p0

    .line 1187
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b9
    return v1
.end method


# virtual methods
.method public afpcDataApply()Z
    .registers 4

    .line 1051
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcDataApply"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    .line 1052
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_17

    .line 1054
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataApply()Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public afpcDataOff()Z
    .registers 4

    .line 1061
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcDataOff"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    .line 1062
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_17

    .line 1064
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataOff()Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public afpcDataVerify()Z
    .registers 3

    const-string v0, "SemMdnieManagerService"

    const-string v1, "afpcDataVerify"

    .line 1032
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_10

    .line 1034
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataVerify()Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public afpcDataWrite()Z
    .registers 4

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcDataWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    .line 1042
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_17

    .line 1044
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcDataWrite()Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public afpcWorkOff()Z
    .registers 4

    .line 1071
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "afpcWorkOff"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SemMdnieManagerService"

    .line 1072
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_17

    .line 1074
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->afpcWorkOff()Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final checkContentMode(I)Z
    .registers 5

    .line 795
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_29

    if-eq p1, v2, :cond_29

    const/4 v0, 0x4

    if-eq p1, v0, :cond_29

    const/4 v0, 0x6

    if-eq p1, v0, :cond_29

    const/16 v0, 0x14

    if-eq p1, v0, :cond_29

    const/16 v0, 0x8

    if-eq p1, v0, :cond_29

    const/16 v0, 0x9

    if-eq p1, v0, :cond_29

    packed-switch p1, :pswitch_data_2c

    goto :goto_2a

    .line 814
    :pswitch_20
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    if-eqz p0, :cond_2a

    goto :goto_29

    .line 808
    :pswitch_25
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    if-eqz p0, :cond_2a

    :cond_29
    :goto_29
    move v1, v2

    :cond_2a
    :goto_2a
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0xb
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public final checkScreenMode(I)Z
    .registers 7

    .line 768
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_19

    if-eqz p1, :cond_18

    if-eq p1, v4, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    if-eq p1, v2, :cond_18

    if-eq p1, v1, :cond_14

    goto :goto_19

    .line 777
    :cond_14
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v0, :cond_19

    :cond_18
    move v3, v4

    .line 786
    :cond_19
    :goto_19
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz p0, :cond_23

    if-ne p1, v1, :cond_20

    move v3, v4

    :cond_20
    if-ne p1, v2, :cond_23

    goto :goto_24

    :cond_23
    move v4, v3

    :goto_24
    return v4
.end method

.method public disableNightMode()Z
    .registers 4

    .line 845
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "disableNightMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    move-result p0

    return p0
.end method

.method public enableNightMode(I)Z
    .registers 5

    .line 839
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "enableNightMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 840
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    move-result p0

    return p0
.end method

.method public getContentMode()I
    .registers 1

    .line 630
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    return p0
.end method

.method public getNightModeBlock()Z
    .registers 4

    .line 862
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string v2, "getNightModeBlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNightModeBlock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    return p0
.end method

.method public getNightModeStep()I
    .registers 3

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNightModeStep : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    return p0
.end method

.method public getScreenMode()I
    .registers 1

    .line 625
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return p0
.end method

.method public final getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 p0, 0x80

    new-array v0, p0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, p0, :cond_d

    .line 1087
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    const/4 p0, 0x0

    const-string v2, "File Close error"

    const-string v3, "SemMdnieManagerService"

    if-eqz p1, :cond_26

    .line 1091
    :try_start_14
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_22
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1f

    goto :goto_27

    :catchall_1f
    move-exception p1

    goto/16 :goto_80

    :catch_22
    move-exception p1

    move-object v0, p1

    move-object p1, p0

    goto :goto_47

    :cond_26
    move-object v4, p0

    :goto_27
    if-eqz v4, :cond_8a

    .line 1094
    :try_start_29
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_43
    .catchall {:try_start_29 .. :try_end_2d} :catchall_40

    if-lez p1, :cond_39

    .line 1096
    :try_start_2f
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, p1, -0x1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object p0, v5

    .line 1098
    :cond_39
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_3d
    .catchall {:try_start_2f .. :try_end_3c} :catchall_40

    goto :goto_8a

    :catch_3d
    move-exception v0

    move v1, p1

    goto :goto_45

    :catchall_40
    move-exception p1

    move-object p0, v4

    goto :goto_80

    :catch_43
    move-exception p1

    move-object v0, p1

    :goto_45
    move-object p1, p0

    move-object p0, v4

    .line 1101
    :goto_47
    :try_start_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , in : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_47 .. :try_end_76} :catchall_1f

    if-eqz p0, :cond_94

    .line 1106
    :try_start_78
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_94

    .line 1108
    :catch_7c
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    :goto_80
    if-eqz p0, :cond_89

    .line 1106
    :try_start_82
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_89

    .line 1108
    :catch_86
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_89
    :goto_89
    throw p1

    :cond_8a
    :goto_8a
    if-eqz v4, :cond_93

    .line 1106
    :try_start_8c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_93

    .line 1108
    :catch_90
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    :goto_93
    move-object p1, p0

    :cond_94
    :goto_94
    return-object p1
.end method

.method public getSupportedContentMode()[I
    .registers 4

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDNIE_SUPPORT_FUNCTION ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), mSupportContentMode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eqz p0, :cond_2f

    move v2, v0

    goto :goto_30

    :cond_2f
    move v2, v1

    .line 694
    :goto_30
    new-array v2, v2, [I

    if-eqz p0, :cond_49

    .line 697
    aput v1, v2, v1

    const/4 p0, 0x1

    .line 698
    aput p0, v2, p0

    const/4 p0, 0x2

    const/4 v1, 0x4

    .line 699
    aput v1, v2, p0

    const/4 p0, 0x3

    .line 700
    aput v0, v2, p0

    const/16 p0, 0x8

    .line 701
    aput p0, v2, v1

    const/4 p0, 0x5

    const/16 v0, 0x9

    .line 702
    aput v0, v2, p0

    :cond_49
    return-object v2
.end method

.method public getSupportedScreenMode()[I
    .registers 8

    .line 645
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_10

    .line 646
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v5, :cond_e

    move v5, v1

    goto :goto_17

    :cond_e
    move v5, v3

    goto :goto_17

    .line 651
    :cond_10
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v5, :cond_16

    move v5, v2

    goto :goto_17

    :cond_16
    move v5, v4

    .line 657
    :goto_17
    new-array v5, v5, [I

    const/4 v6, 0x1

    if-eqz v0, :cond_2c

    .line 660
    aput v4, v5, v4

    .line 661
    aput v6, v5, v6

    .line 662
    aput v2, v5, v2

    const/4 v0, 0x3

    .line 663
    aput v3, v5, v0

    .line 664
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz p0, :cond_34

    .line 665
    aput v1, v5, v3

    goto :goto_34

    .line 668
    :cond_2c
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz p0, :cond_34

    .line 669
    aput v3, v5, v4

    .line 670
    aput v1, v5, v6

    :cond_34
    :goto_34
    return-object v5
.end method

.method public isContentModeSupported()Z
    .registers 1

    .line 679
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isNightModeSupported()Z
    .registers 1

    .line 831
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isScreenModeSupported()Z
    .registers 2

    .line 634
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final registerProcessObserver()V
    .registers 3

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_1e

    .line 526
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 527
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1e

    :catch_17
    const-string p0, "SemMdnieManagerService"

    const-string v0, "failed to registerProcessObserver"

    .line 530
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setAmoledACL(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setColorFadeNightDim(Z)Z
    .registers 7

    .line 927
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 928
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_13

    move v1, v4

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueLightFilterEnabled:Z

    const-string v1, "blue_light_filter_night_dim"

    .line 929
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v4, v2

    :goto_20
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    .line 931
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueLightFilterEnabled:Z

    if-eqz v0, :cond_49

    if-eqz v4, :cond_49

    const-string v0, "SemMdnieManagerService"

    const-string/jumbo v1, "setColorFadeNightDim"

    .line 932
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3b

    .line 934
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightDimOffMode(ZI)Z

    move-result p0

    return p0

    .line 936
    :cond_3b
    iget p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    .line 937
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    move-result p0

    return p0

    :cond_49
    return v2
.end method

.method public setColorVision(ZII)Z
    .registers 8

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ltz p2, :cond_86

    const/16 v1, 0xc

    if-gt p2, v1, :cond_86

    if-ltz p3, :cond_86

    const/16 v1, 0x9

    if-gt p3, v1, :cond_86

    .line 989
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_37
    const-string v2, "/sys/class/mdnie/mdnie/color_lens"

    .line 990
    invoke-static {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 991
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie1/color_lens"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_51

    const-string v2, "/sys/class/mdnie/mdnie1/color_lens"

    .line 992
    invoke-static {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_51
    const-string v0, "SemMdnieManagerService"

    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setColorVision : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVision:Z

    .line 996
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionColor:I

    .line 997
    iput p3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorVisionLevel:I

    const/4 p0, 0x1

    .line 998
    monitor-exit v1

    return p0

    .line 1000
    :cond_81
    monitor-exit v1

    goto :goto_86

    :catchall_83
    move-exception p0

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_37 .. :try_end_85} :catchall_83

    throw p0

    :cond_86
    :goto_86
    const/4 p0, 0x0

    return p0
.end method

.method public setContentMode(I)Z
    .registers 6

    .line 730
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v0, :cond_68

    .line 731
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkContentMode(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 732
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    const-string v1, "/sys/class/mdnie/mdnie/scenario"

    .line 733
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_63

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1b

    const/4 v1, 0x6

    if-ne p1, v1, :cond_35

    .line 735
    :cond_1b
    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isIndiaCountryCode:Z

    if-nez v1, :cond_2f

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isBangladeshCountryCode:Z

    if-nez v1, :cond_2f

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isNepalCountryCode:Z

    if-nez v1, :cond_2f

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isSrilankaCountryCode:Z

    if-nez v1, :cond_2f

    sget-boolean v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->isMaldivesCountryCode:Z

    if-eqz v1, :cond_35

    :cond_2f
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeSWA:Z

    if-eqz v1, :cond_35

    add-int/lit8 p1, p1, 0x1

    .line 738
    :cond_35
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie1/scenario"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "/sys/class/mdnie/mdnie1/scenario"

    .line 739
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_47
    const-string v1, "SemMdnieManagerService"

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setContentMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    .line 743
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 745
    :cond_63
    monitor-exit v0

    goto :goto_68

    :catchall_65
    move-exception p0

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_d .. :try_end_67} :catchall_65

    throw p0

    :cond_68
    :goto_68
    const/4 p0, 0x0

    return p0
.end method

.method public final setFactoryWhiteRGB()V
    .registers 20

    move-object/from16 v1, p0

    const-string v0, "/efs/FactoryApp/mdnie1"

    const-string v2, "/efs/FactoryApp/mdnie"

    const-string v3, "FileReader Close IOException : "

    const-string v4, "BufferedReader Close IOException : "

    const-string v5, "SemMdnieManagerService"

    const/4 v7, 0x0

    .line 544
    :try_start_d
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_16} :catch_2d0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_275
    .catchall {:try_start_d .. :try_end_16} :catchall_26b

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, " "

    if-eqz v8, :cond_f7

    .line 545
    :try_start_1c
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_21} :catch_eb
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_df
    .catchall {:try_start_1c .. :try_end_21} :catchall_26b

    .line 546
    :try_start_21
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_26} :catch_d6
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_cd
    .catchall {:try_start_21 .. :try_end_26} :catchall_c8

    .line 547
    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2a} :catch_bf
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_b6
    .catchall {:try_start_26 .. :try_end_2a} :catchall_258

    if-eqz v12, :cond_b1

    .line 549
    :try_start_2c
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 550
    aget-object v14, v13, v7

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_3e} :catch_a7
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3e} :catch_9d
    .catchall {:try_start_2c .. :try_end_3e} :catchall_258

    .line 551
    :try_start_3e
    aget-object v15, v13, v10

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_48} :catch_96
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_48} :catch_8f
    .catchall {:try_start_3e .. :try_end_48} :catchall_258

    .line 552
    :try_start_48
    aget-object v13, v13, v9

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_52} :catch_89
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_52} :catch_83
    .catchall {:try_start_48 .. :try_end_52} :catchall_258

    .line 553
    :try_start_52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setFactoryWhiteRGB : scrR - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", scrG - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", scrB - "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_77} :catch_7e
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_77} :catch_79
    .catchall {:try_start_52 .. :try_end_77} :catchall_258

    goto/16 :goto_fd

    :catch_79
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    goto :goto_a4

    :catch_7e
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    goto :goto_ae

    :catch_83
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    goto :goto_a4

    :catch_89
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    goto :goto_ae

    :catch_8f
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v15, v13

    goto :goto_a4

    :catch_96
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v15, v13

    goto :goto_ae

    :catch_9d
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    :goto_a4
    const/4 v2, 0x0

    goto/16 :goto_280

    :catch_a7
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    :goto_ae
    const/4 v2, 0x0

    goto/16 :goto_2db

    :cond_b1
    move v13, v7

    move v14, v13

    move v15, v14

    goto/16 :goto_fd

    :catch_b6
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    goto :goto_e8

    :catch_bf
    move-exception v0

    move-object v6, v2

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    goto :goto_f4

    :catchall_c8
    move-exception v0

    move-object v1, v0

    const/4 v6, 0x0

    goto/16 :goto_26f

    :catch_cd
    move-exception v0

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_e8

    :catch_d6
    move-exception v0

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_f4

    :catch_df
    move-exception v0

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_e8
    const/4 v12, 0x0

    goto/16 :goto_280

    :catch_eb
    move-exception v0

    move v10, v7

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_f4
    const/4 v12, 0x0

    goto/16 :goto_2db

    :cond_f7
    move v13, v7

    move v14, v13

    move v15, v14

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 556
    :goto_fd
    :try_start_fd
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_204

    .line 557
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_10d
    .catch Ljava/io/FileNotFoundException; {:try_start_fd .. :try_end_10d} :catch_263
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_10d} :catch_25c
    .catchall {:try_start_fd .. :try_end_10d} :catchall_258

    .line 558
    :try_start_10d
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_112
    .catch Ljava/io/FileNotFoundException; {:try_start_10d .. :try_end_112} :catch_1f8
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_112} :catch_1ec
    .catchall {:try_start_10d .. :try_end_112} :catchall_1e3

    .line 559
    :try_start_112
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16
    :try_end_116
    .catch Ljava/io/FileNotFoundException; {:try_start_112 .. :try_end_116} :catch_1d7
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_116} :catch_1cb
    .catchall {:try_start_112 .. :try_end_116} :catchall_1c2

    if-eqz v16, :cond_1bb

    .line 561
    :try_start_118
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 562
    aget-object v11, v0, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_12a
    .catch Ljava/io/FileNotFoundException; {:try_start_118 .. :try_end_12a} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_12a} :catch_1a1
    .catchall {:try_start_118 .. :try_end_12a} :catchall_1c2

    .line 563
    :try_start_12a
    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_134
    .catch Ljava/io/FileNotFoundException; {:try_start_12a .. :try_end_134} :catch_198
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_134} :catch_18f
    .catchall {:try_start_12a .. :try_end_134} :catchall_1c2

    const/16 v17, 0x2

    .line 564
    :try_start_136
    aget-object v0, v0, v17

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_140
    .catch Ljava/io/FileNotFoundException; {:try_start_136 .. :try_end_140} :catch_187
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_140} :catch_17f
    .catchall {:try_start_136 .. :try_end_140} :catchall_1c2

    .line 565
    :try_start_140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_145
    .catch Ljava/io/FileNotFoundException; {:try_start_140 .. :try_end_145} :catch_178
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_145} :catch_171
    .catchall {:try_start_140 .. :try_end_145} :catchall_1c2

    move-object/from16 v18, v6

    :try_start_147
    const-string/jumbo v6, "setFactoryWhiteRGB : scrRSub - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", scrGSub - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", scrBSub - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_167
    .catch Ljava/io/FileNotFoundException; {:try_start_147 .. :try_end_167} :catch_16f
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_167} :catch_16d
    .catchall {:try_start_147 .. :try_end_167} :catchall_16a

    move-object v6, v9

    goto/16 :goto_20c

    :catchall_16a
    move-exception v0

    goto/16 :goto_1c5

    :catch_16d
    move-exception v0

    goto :goto_174

    :catch_16f
    move-exception v0

    goto :goto_17b

    :catch_171
    move-exception v0

    move-object/from16 v18, v6

    :goto_174
    move-object v6, v2

    move-object/from16 v2, v16

    goto :goto_1aa

    :catch_178
    move-exception v0

    move-object/from16 v18, v6

    :goto_17b
    move-object v6, v2

    move-object/from16 v2, v16

    goto :goto_1b7

    :catch_17f
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    goto :goto_1aa

    :catch_187
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    goto :goto_1b7

    :catch_18f
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_1aa

    :catch_198
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto :goto_1b7

    :catch_1a1
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1aa
    move-object/from16 v16, v9

    goto/16 :goto_284

    :catch_1ae
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v2, v16

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1b7
    move-object/from16 v16, v9

    goto/16 :goto_2df

    :cond_1bb
    move-object/from16 v18, v6

    move-object v6, v9

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_20c

    :catchall_1c2
    move-exception v0

    move-object/from16 v18, v6

    :goto_1c5
    move-object v1, v0

    move-object v6, v2

    move-object/from16 v16, v9

    goto/16 :goto_38b

    :catch_1cb
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v16, v9

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_284

    :catch_1d7
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    move-object/from16 v16, v9

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_2df

    :catchall_1e3
    move-exception v0

    move-object/from16 v18, v6

    move-object v1, v0

    move-object v6, v2

    const/16 v16, 0x0

    goto/16 :goto_38b

    :catch_1ec
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    goto/16 :goto_284

    :catch_1f8
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    goto/16 :goto_2df

    :cond_204
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_20c
    if-eqz v2, :cond_214

    .line 575
    :try_start_20e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_214

    :catch_212
    move-exception v0

    goto :goto_21a

    :cond_214
    :goto_214
    if-eqz v6, :cond_230

    .line 578
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_219
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_219} :catch_212

    goto :goto_230

    .line 581
    :goto_21a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_230
    :goto_230
    if-eqz v8, :cond_238

    .line 585
    :try_start_232
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_238

    :catch_236
    move-exception v0

    goto :goto_23e

    :cond_238
    :goto_238
    if-eqz v18, :cond_254

    .line 588
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_23d
    .catch Ljava/io/IOException; {:try_start_232 .. :try_end_23d} :catch_236

    goto :goto_254

    .line 591
    :goto_23e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_254
    :goto_254
    move-object/from16 v2, v16

    goto/16 :goto_31a

    :catchall_258
    move-exception v0

    move-object v1, v0

    move-object v6, v2

    goto :goto_26f

    :catch_25c
    move-exception v0

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_280

    :catch_263
    move-exception v0

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_2db

    :catchall_26b
    move-exception v0

    move-object v1, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_26f
    const/16 v16, 0x0

    const/16 v18, 0x0

    goto/16 :goto_38b

    :catch_275
    move-exception v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_280
    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 571
    :goto_284
    :try_start_284
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_287
    .catchall {:try_start_284 .. :try_end_287} :catchall_389

    if-eqz v6, :cond_28f

    .line 575
    :try_start_289
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_28f

    :catch_28d
    move-exception v0

    goto :goto_295

    :cond_28f
    :goto_28f
    if-eqz v16, :cond_2ab

    .line 578
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_294
    .catch Ljava/io/IOException; {:try_start_289 .. :try_end_294} :catch_28d

    goto :goto_2ab

    .line 581
    :goto_295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ab
    :goto_2ab
    if-eqz v8, :cond_2b3

    .line 585
    :try_start_2ad
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_2b3

    :catch_2b1
    move-exception v0

    goto :goto_2b9

    :cond_2b3
    :goto_2b3
    if-eqz v18, :cond_31a

    .line 588
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_2b8
    .catch Ljava/io/IOException; {:try_start_2ad .. :try_end_2b8} :catch_2b1

    goto :goto_31a

    .line 591
    :goto_2b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2be
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31a

    :catch_2d0
    move-exception v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2db
    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 569
    :goto_2df
    :try_start_2df
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2e2
    .catchall {:try_start_2df .. :try_end_2e2} :catchall_389

    if-eqz v6, :cond_2ea

    .line 575
    :try_start_2e4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_2ea

    :catch_2e8
    move-exception v0

    goto :goto_2f0

    :cond_2ea
    :goto_2ea
    if-eqz v16, :cond_306

    .line 578
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_2ef
    .catch Ljava/io/IOException; {:try_start_2e4 .. :try_end_2ef} :catch_2e8

    goto :goto_306

    .line 581
    :goto_2f0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_306
    :goto_306
    if-eqz v8, :cond_30e

    .line 585
    :try_start_308
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_30e

    :catch_30c
    move-exception v0

    goto :goto_314

    :cond_30e
    :goto_30e
    if-eqz v18, :cond_31a

    .line 588
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_313
    .catch Ljava/io/IOException; {:try_start_308 .. :try_end_313} :catch_30c

    goto :goto_31a

    .line 591
    :goto_314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2be

    :cond_31a
    :goto_31a
    const/4 v0, 0x7

    const/16 v3, -0x28

    if-gtz v14, :cond_34d

    if-lt v14, v3, :cond_34d

    if-gtz v15, :cond_34d

    if-lt v15, v3, :cond_34d

    if-gtz v13, :cond_34d

    if-lt v13, v3, :cond_34d

    .line 596
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_34d

    .line 597
    iput v14, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    .line 598
    iput v15, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    .line 599
    iput v13, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    .line 600
    div-int/lit8 v14, v14, 0x3

    neg-int v4, v14

    iput v4, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    if-ltz v4, :cond_345

    if-le v4, v0, :cond_348

    :cond_345
    const/4 v4, 0x0

    .line 602
    iput v4, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    :cond_348
    if-eqz v12, :cond_34d

    .line 604
    invoke-static {v5, v12}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 607
    :cond_34d
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/mdnie/mdnie1/whiteRGB"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_388

    if-gtz v11, :cond_388

    if-lt v11, v3, :cond_388

    if-gtz v10, :cond_388

    if-lt v10, v3, :cond_388

    if-gtz v7, :cond_388

    if-lt v7, v3, :cond_388

    .line 609
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_388

    .line 610
    iput v11, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndexSub:I

    .line 611
    iput v10, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndexSub:I

    .line 612
    iput v7, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndexSub:I

    .line 613
    div-int/lit8 v11, v11, 0x3

    neg-int v3, v11

    iput v3, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    if-ltz v3, :cond_380

    if-le v3, v0, :cond_383

    :cond_380
    const/4 v3, 0x0

    .line 615
    iput v3, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    :cond_383
    if-eqz v2, :cond_388

    .line 617
    invoke-static {v5, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_388
    return-void

    :catchall_389
    move-exception v0

    move-object v1, v0

    :goto_38b
    if-eqz v6, :cond_393

    .line 575
    :try_start_38d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_393

    :catch_391
    move-exception v0

    goto :goto_399

    :cond_393
    :goto_393
    if-eqz v16, :cond_3af

    .line 578
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_398
    .catch Ljava/io/IOException; {:try_start_38d .. :try_end_398} :catch_391

    goto :goto_3af

    .line 581
    :goto_399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3af
    :goto_3af
    if-eqz v8, :cond_3b7

    .line 585
    :try_start_3b1
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    goto :goto_3b7

    :catch_3b5
    move-exception v0

    goto :goto_3bd

    :cond_3b7
    :goto_3b7
    if-eqz v18, :cond_3d3

    .line 588
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileReader;->close()V
    :try_end_3bc
    .catch Ljava/io/IOException; {:try_start_3b1 .. :try_end_3bc} :catch_3b5

    goto :goto_3d3

    .line 591
    :goto_3bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_3d3
    :goto_3d3
    throw v1
.end method

.method public setLightNotificationMode(Z)Z
    .registers 7

    .line 1007
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportLightNotificationMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 1008
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1009
    :try_start_8
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie1/light_notification"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    const-string v0, "/sys/class/mdnie/mdnie1/light_notification"

    if-eqz p1, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v1

    .line 1010
    :goto_1d
    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_20
    const-string v0, "SemMdnieManagerService"

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLightNotificationMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/mdnie/mdnie/light_notification"

    if-eqz p1, :cond_3c

    move v1, v2

    .line 1013
    :cond_3c
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_42
    move-exception p1

    .line 1014
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_42

    throw p1

    :cond_45
    return v1
.end method

.method public final setNightDimOffMode(ZI)Z
    .registers 9

    .line 945
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_night_dim"

    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 948
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v3

    :goto_14
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    if-eqz v0, :cond_37

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 953
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 956
    :goto_53
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v2, :cond_f3

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    if-eqz v2, :cond_f3

    if-ltz p2, :cond_f3

    .line 957
    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    if-gt p2, v2, :cond_f3

    .line 958
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 959
    :try_start_64
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_NEW_SYSFS_USE:Z

    if-eqz v4, :cond_a2

    const-string v4, "/sys/class/lcd/panel/reading_mode"

    .line 960
    invoke-static {v4, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ee

    const-string v3, "SemMdnieManagerService"

    .line 961
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNightDimOffMode_1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", str : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 963
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 964
    monitor-exit v2

    return v1

    :cond_a2
    const-string v4, "/sys/class/mdnie/mdnie/night_mode"

    .line 967
    invoke-static {v4, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 968
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/mdnie/mdnie1/night_mode"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_bc

    const-string v3, "/sys/class/mdnie/mdnie1/night_mode"

    .line 969
    invoke-static {v3, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_bc
    const-string v3, "SemMdnieManagerService"

    .line 971
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNightDimOffMode_2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", str : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 973
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 974
    monitor-exit v2

    return v1

    .line 977
    :cond_ee
    monitor-exit v2

    goto :goto_f3

    :catchall_f0
    move-exception p0

    monitor-exit v2
    :try_end_f2
    .catchall {:try_start_64 .. :try_end_f2} :catchall_f0

    throw p0

    :cond_f3
    :goto_f3
    return v3
.end method

.method public setNightMode(ZI)Z
    .registers 9

    .line 882
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_night_dim"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 885
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_13

    move v1, v4

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    const-string v1, "aod_show_state"

    .line 886
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_20

    move v0, v4

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    .line 888
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightDimModeEnabled:Z

    if-eqz v1, :cond_67

    if-nez v0, :cond_48

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v1, p2, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    .line 892
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    .line 895
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    :goto_83
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v1, :cond_123

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    if-eqz v1, :cond_123

    if-ltz p2, :cond_123

    .line 899
    iget v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    if-gt p2, v1, :cond_123

    .line 900
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 901
    :try_start_94
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_NEW_SYSFS_USE:Z

    if-eqz v3, :cond_d2

    const-string v3, "/sys/class/lcd/panel/reading_mode"

    .line 902
    invoke-static {v3, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11e

    const-string v2, "SemMdnieManagerService"

    .line 903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNightMode_1 : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", index : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", str : ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 905
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 906
    monitor-exit v1

    return v4

    :cond_d2
    const-string v3, "/sys/class/mdnie/mdnie/night_mode"

    .line 909
    invoke-static {v3, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 910
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie1/night_mode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ec

    const-string v2, "/sys/class/mdnie/mdnie1/night_mode"

    .line 911
    invoke-static {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_ec
    const-string v2, "SemMdnieManagerService"

    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNightMode_2 : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", index : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", str : ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 915
    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 916
    monitor-exit v1

    return v4

    .line 919
    :cond_11e
    monitor-exit v1

    goto :goto_123

    :catchall_120
    move-exception p0

    monitor-exit v1
    :try_end_122
    .catchall {:try_start_94 .. :try_end_122} :catchall_120

    throw p0

    :cond_123
    :goto_123
    return v2
.end method

.method public setNightModeBlock(Z)Z
    .registers 5

    .line 851
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setNightModeBlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNightModeBlock : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_30

    .line 854
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->disableNightMode()Z

    .line 856
    :cond_30
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    const/4 p0, 0x1

    return p0
.end method

.method public setNightModeStep(I)Z
    .registers 4

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNightModeStep : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBlueFilterIndex:I

    const/4 p0, 0x1

    return p0
.end method

.method public setScreenMode(I)Z
    .registers 6

    .line 709
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v0, :cond_50

    .line 710
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_50

    .line 711
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 712
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    const-string v1, "/sys/class/mdnie/mdnie/mode"

    .line 713
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 714
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/mdnie/mdnie1/mode"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "/sys/class/mdnie/mdnie1/mode"

    .line 715
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_2f
    const-string v1, "SemMdnieManagerService"

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    const/4 p0, 0x1

    .line 719
    monitor-exit v0

    return p0

    .line 721
    :cond_4b
    monitor-exit v0

    goto :goto_50

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_15 .. :try_end_4f} :catchall_4d

    throw p0

    :cond_50
    :goto_50
    const/4 p0, 0x0

    return p0
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .registers 5

    .line 1392
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v1, "setmDNIeAccessibilityMode"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setmDNIeAccessibilityMode("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemMdnieManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1279
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string p2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v0, "setmDNIeColorBlind"

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setmDNIeColorBlind ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemMdnieManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .registers 6

    .line 1374
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v1, "setmDNIeEmergencyMode"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setmDNIeEmergencyMode ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemMdnieManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    move v1, p0

    goto :goto_2d

    :cond_2c
    move v1, v0

    :goto_2d
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    .line 1376
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    .line 1377
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie1/accessibility"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_49

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    move p0, v0

    .line 1378
    :goto_44
    invoke-static {v3, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p0

    and-int/2addr v1, p0

    :cond_49
    return v1
.end method

.method public setmDNIeNegative(Z)Z
    .registers 4

    .line 1325
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v1, "setmDNIeNegative"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setmDNIeNegative ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemMdnieManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .registers 6

    .line 1356
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v2, "setmDNIeScreenCurtain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setmDNIeScreenCurtain ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemMdnieManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    const/4 p0, 0x3

    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    move v1, p0

    goto :goto_2f

    :cond_2e
    move v1, v0

    :goto_2f
    const-string v2, "/sys/class/mdnie/mdnie/accessibility"

    .line 1359
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v1

    .line 1360
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie1/accessibility"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    move p0, v0

    .line 1361
    :goto_46
    invoke-static {v3, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p0

    and-int/2addr v1, p0

    :cond_4b
    return v1
.end method

.method public final setting_is_changed()V
    .registers 16

    .line 416
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    .line 417
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_mode_setting"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    .line 418
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "sec_display_temperature_green"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 420
    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_blue"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 421
    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_preset_index"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 423
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    if-eqz v5, :cond_13b

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting_is_changed - R("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), G("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), B("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SemMdnieManagerService"

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iput v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrRIndex:I

    .line 426
    iput v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrGIndex:I

    .line 427
    iput v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCustomScrBIndex:I

    .line 437
    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    const/4 v5, 0x1

    const/4 v7, 0x5

    if-ltz v4, :cond_9a

    if-ge v4, v7, :cond_9a

    .line 444
    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[[I

    iget v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndex:I

    aget-object v8, v8, v9

    aget-object v8, v8, v4

    aget v9, v8, v2

    add-int/2addr v9, v0

    .line 445
    aget v10, v8, v5

    add-int/2addr v10, v1

    .line 446
    aget v8, v8, v6

    add-int/2addr v8, v3

    goto :goto_9d

    :cond_9a
    move v8, v2

    move v9, v8

    move v10, v9

    :goto_9d
    const-string v11, " "

    const/16 v12, -0x28

    if-gtz v9, :cond_e1

    if-lt v9, v12, :cond_e1

    if-gtz v10, :cond_e1

    if-lt v10, v12, :cond_e1

    if-gtz v8, :cond_e1

    if-lt v8, v12, :cond_e1

    .line 449
    new-instance v13, Ljava/io/File;

    const-string v14, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_e1

    .line 450
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 451
    invoke-static {v14, v8}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e1
    if-ltz v4, :cond_f9

    if-ge v4, v7, :cond_f9

    .line 457
    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetScrIndex:I

    .line 463
    iget-object v7, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPresetAdjustWhiteRGB:[[[I

    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrIndexSub:I

    aget-object p0, v7, p0

    aget-object p0, p0, v4

    aget v2, p0, v2

    add-int/2addr v2, v0

    .line 464
    aget v0, p0, v5

    add-int/2addr v0, v1

    .line 465
    aget p0, p0, v6

    add-int/2addr p0, v3

    goto :goto_fb

    :cond_f9
    move p0, v2

    move v0, p0

    .line 467
    :goto_fb
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/mdnie/mdnie1/whiteRGB"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13b

    if-gtz v2, :cond_13b

    if-lt v2, v12, :cond_13b

    if-gtz v0, :cond_13b

    if-lt v0, v12, :cond_13b

    if-gtz p0, :cond_13b

    if-lt p0, v12, :cond_13b

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-static {v3, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_13b
    return-void
.end method

.method public updateAlwaysOnDisplay(ZI)V
    .registers 4

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_c

    .line 1023
    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->afterimageCompensation:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    if-eqz p0, :cond_c

    .line 1024
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updateAlwaysOnDisplayForBurnInService(ZI)V

    .line 1027
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p0
.end method
