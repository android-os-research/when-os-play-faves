.class public Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;
.super Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.source "SemDisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field public static RETURN_ERROR_F:F = -1.0f

.field public static final TAG:Ljava/lang/String; = "SemDisplaySolutionManagerService"


# instance fields
.field public final BRIGHTNESS_SCALE_OFF:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_1:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_2:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_3:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_4:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_5:Ljava/lang/String;

.field public final BRIGHTNESS_SCALE_ON_6:Ljava/lang/String;

.field public final BROWSER_APP_BRIGHTNESS_OFF:Ljava/lang/String;

.field public final BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

.field public final BURNIN_PREVENTION_OFF:Ljava/lang/String;

.field public final BURNIN_PREVENTION_ON:Ljava/lang/String;

.field public BURN_IN_APPLY_COUNT:Ljava/lang/String;

.field public BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

.field public final COLOR_BLIND_OFF:Ljava/lang/String;

.field public final COLOR_BLIND_ON:Ljava/lang/String;

.field public final DEBUG:Z

.field public DOU_BRIGHTNESS_STANDARD_VALUE:I

.field public DOU_BRIGHTNESS_SUPPORT_VALUE:I

.field public DOU_VERSION:I

.field public final EXTRA_BRIGHTNESS_OFF:Ljava/lang/String;

.field public final EXTRA_BRIGHTNESS_ON:Ljava/lang/String;

.field public final HIGH_BRIGHTNESS_MODE_PMS_ENTER:Ljava/lang/String;

.field public IRC_MODE_NODE:Ljava/lang/String;

.field public IRC_MODE_SUB_NODE:Ljava/lang/String;

.field public NIGHT_DIM_MODE_NODE:Ljava/lang/String;

.field public NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

.field public final REAL_HDR_OFF:Ljava/lang/String;

.field public final REAL_HDR_ON:Ljava/lang/String;

.field public final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field public SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

.field public adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

.field public bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

.field public ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

.field public mAdaptiveScreenModeEnabled:Z

.field public mAfcType:I

.field public mAlphaBlendingValue:F

.field public mAppBrightnessScale:Z

.field public mAutoBrightnessMode:Z

.field public mAutoBrightnessModeEnabled:Z

.field public mAutoCurrentLimitOffEnable:Z

.field public mBrightnessBacklightValueStringArray:[Ljava/lang/String;

.field public mBrightnessCompensation:F

.field public mBrightnessExtraBrightnessArray:[F

.field public mBrightnessGalleryAppArray:[F

.field public mBrightnessNitsValueStringArray:[Ljava/lang/String;

.field public mBrightnessOverHeatAppArray:[F

.field public mBrightnessSamsungVideoAppArray:[F

.field public mBrightnessVideoEnhancerArray:[F

.field public mBrowserAppBrightnessControl:Z

.field public mBurnInPrevention:Z

.field public mBurnInScaleFactorStringArray:[Ljava/lang/String;

.field public mBurnInScaleFactorValueArray:[F

.field public mCalculatedAlphaBlendingValue:F

.field public mColorBlind:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentBrightnessValue:F

.field public mDouAppEnable:Z

.field public mExtraBrightness:Z

.field public mExtraBrightnessModeEnabled:Z

.field public mExtraBrightnessStringArray:[Ljava/lang/String;

.field public mGalleryAppBrightnessStringArray:[Ljava/lang/String;

.field public mGalleryEnable:Z

.field public mGammaArray:[F

.field public mGammaStringArray:[Ljava/lang/String;

.field public mHighBrightnessModeEnabled:Z

.field public mHighDynamicRangeScaleFactorValue:F

.field public mLastScaleFactorValue:F

.field public final mLock:Ljava/lang/Object;

.field public mMSCSEnable:Z

.field public mName:Ljava/lang/String;

.field public final mNumberDisplaySolutionBrowserAppScaleFactorStep:I

.field public final mNumberDisplaySolutionBurnInScaleFactor:I

.field public final mNumberDisplaySolutionExtraBrightnessFactor:I

.field public final mNumberDisplaySolutionGalleryAppBrightnessFactor:I

.field public final mNumberDisplaySolutionGammaFactor:I

.field public final mNumberDisplaySolutionOverHeatAppBrightnessFactor:I

.field public final mNumberDisplaySolutionSamsungVideoAppBrightnessFactor:I

.field public final mNumberDisplaySolutionScaleFactor:I

.field public final mNumberDisplaySolutionVideoEnhancerBrightnessFactor:I

.field public mOnPixelRatioValue:Ljava/lang/String;

.field public mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

.field public mPlatformBrightnessValue:F

.field public mPowerManager:Landroid/os/PowerManager;

.field public mRealHDR:Z

.field public final mSCafeVersion:Ljava/lang/String;

.field public mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

.field public mScaleFactor:F

.field public mScaleFactorStringArray:[Ljava/lang/String;

.field public mScaleFactorValueArray:[F

.field public mScreenBrightnessExtendedMaximumConfig:I

.field public mSettingValue:Ljava/lang/String;

.field public mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

.field public mTempAB:D

.field public mTitle:Ljava/lang/String;

.field public mUseAdaptiveDisplaySolutionServiceConfig:Z

.field public mUseBigDataLoggingServiceConfig:Z

.field public mUseEyeComfortSolutionServiceConfig:Z

.field public mUseMdnieScenarioControlServiceConfig:Z

.field public mVideoEnable:Z

.field public mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

.field public mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

.field public settingsValueEM:F

.field public settingsValuePSM:F

.field public settingsValueString:Ljava/lang/String;

.field public settingsValueStringArray:[Ljava/lang/String;

.field public settingsValueUPSM:F

.field public temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

.field public temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

.field public temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

.field public temp_COLOR_BLIND_ON:Ljava/lang/String;

.field public temp_EXTRA_BRIGHTNESS_ON:Ljava/lang/String;

.field public temp_REAL_HDR_ON:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetIRC_MODE_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetIRC_MODE_SUB_NODE(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdaptiveScreenModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExtraBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighBrightnessModeEnabled(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsysfsWrite(Ljava/lang/String;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;-><init>()V

    .line 72
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DEBUG:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 81
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 82
    iput-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    .line 86
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessMode:Z

    .line 121
    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 122
    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 123
    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    .line 124
    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    const/4 v1, 0x0

    .line 126
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 127
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    .line 128
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    .line 129
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    .line 130
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    .line 131
    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    const-string v1, "/sys/class/lcd/panel/irc_mode"

    .line 156
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel1/irc_mode"

    .line 157
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel/night_dim"

    .line 158
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel1/night_dim"

    .line 159
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    const-string v1, "/efs/afc/apply_count"

    .line 160
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    const-string v1, "/efs/afc1/apply_count"

    .line 161
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    const-string v1, "color_blind_on"

    .line 162
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->COLOR_BLIND_ON:Ljava/lang/String;

    const-string v1, "color_blind_off"

    .line 163
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->COLOR_BLIND_OFF:Ljava/lang/String;

    const-string/jumbo v1, "real_hdr_on"

    .line 164
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->REAL_HDR_ON:Ljava/lang/String;

    const-string/jumbo v1, "real_hdr_off"

    .line 165
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->REAL_HDR_OFF:Ljava/lang/String;

    const-string v1, "extra_brightness_on"

    .line 166
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->EXTRA_BRIGHTNESS_ON:Ljava/lang/String;

    const-string v1, "extra_brightness_off"

    .line 167
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->EXTRA_BRIGHTNESS_OFF:Ljava/lang/String;

    const-string v1, "brightness_scale_on_1"

    .line 168
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_1:Ljava/lang/String;

    const-string v1, "brightness_scale_on_2"

    .line 169
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_2:Ljava/lang/String;

    const-string v1, "brightness_scale_on_3"

    .line 170
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_3:Ljava/lang/String;

    const-string v1, "brightness_scale_on_4"

    .line 171
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_4:Ljava/lang/String;

    const-string v1, "brightness_scale_on_5"

    .line 172
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_5:Ljava/lang/String;

    const-string v1, "brightness_scale_on_6"

    .line 173
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_ON_6:Ljava/lang/String;

    const-string v1, "brightness_scale_off"

    .line 174
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BRIGHTNESS_SCALE_OFF:Ljava/lang/String;

    const-string v1, "browser_brightness_on"

    .line 175
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    const-string v1, "browser_brightness_off"

    .line 176
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BROWSER_APP_BRIGHTNESS_OFF:Ljava/lang/String;

    const-string v1, "burnin_prevention_on"

    .line 177
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURNIN_PREVENTION_ON:Ljava/lang/String;

    const-string v1, "burnin_prevention_off"

    .line 178
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURNIN_PREVENTION_OFF:Ljava/lang/String;

    const-string/jumbo v1, "screen_mode_automatic_setting"

    .line 179
    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string v2, "high_brightness_mode_pms_enter"

    .line 180
    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HIGH_BRIGHTNESS_MODE_PMS_ENTER:Ljava/lang/String;

    const-string/jumbo v3, "ro.build.scafe.version"

    .line 181
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/16 v3, 0xff

    .line 182
    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    const/4 v4, 0x1

    .line 183
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionScaleFactor:I

    const/16 v5, 0x14

    .line 184
    iput v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionBrowserAppScaleFactorStep:I

    const/16 v5, 0xa

    .line 185
    iput v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionBurnInScaleFactor:I

    .line 186
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionExtraBrightnessFactor:I

    .line 187
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionGalleryAppBrightnessFactor:I

    .line 188
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionSamsungVideoAppBrightnessFactor:I

    .line 189
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionOverHeatAppBrightnessFactor:I

    const/4 v6, 0x2

    .line 190
    iput v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionVideoEnhancerBrightnessFactor:I

    .line 191
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionGammaFactor:I

    .line 194
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110185

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110043

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0109

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070043

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070044

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaStringArray:[Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070049

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessStringArray:[Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107004e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryAppBrightnessStringArray:[Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107005d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070069

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070062

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070063

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0058

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0057

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0080

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    .line 216
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v7, v8, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_1dd

    .line 217
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 219
    :cond_1dd
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    if-eqz v7, :cond_1ea

    .line 220
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 221
    new-instance v7, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {v7, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 223
    :cond_1ea
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    if-eqz v7, :cond_1f5

    .line 224
    new-instance v7, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-direct {v7, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 225
    :cond_1f5
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v7, :cond_200

    .line 226
    new-instance v7, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    invoke-direct {v7, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 227
    :cond_200
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    if-eqz v7, :cond_20b

    .line 228
    new-instance v7, Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {v7, p1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 230
    :cond_20b
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    if-le p1, v3, :cond_211

    .line 231
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    .line 233
    :cond_211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUseMdnieScenarioControlServiceConfig : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SemDisplaySolutionManagerService"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUseAdaptiveDisplaySolutionServiceConfig : "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseAdaptiveDisplaySolutionServiceConfig:Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUseEyeComfortSolutionServiceConfig : "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseEyeComfortSolutionServiceConfig:Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUseBigDataLoggingServiceConfig : "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mScreenBrightnessExtendedMaximumConfig : "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v4, [F

    .line 239
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    move p1, v0

    .line 240
    :goto_286
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    array-length v7, v3

    if-ge p1, v7, :cond_2a0

    .line 241
    iget-object v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v7, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_286

    :cond_2a0
    new-array p1, v5, [F

    .line 244
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    move p1, v0

    .line 245
    :goto_2a5
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_2bf

    .line 246
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2a5

    :cond_2bf
    new-array p1, v4, [F

    .line 249
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    move p1, v0

    .line 250
    :goto_2c4
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_2de

    .line 251
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2c4

    :cond_2de
    new-array p1, v4, [F

    .line 254
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    move p1, v0

    .line 255
    :goto_2e3
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryAppBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_2fd

    .line 256
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2e3

    :cond_2fd
    new-array p1, v4, [F

    .line 259
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    move p1, v0

    .line 260
    :goto_302
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSamsungVideoAppBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_31c

    .line 261
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_302

    :cond_31c
    new-array p1, v4, [F

    .line 264
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    move p1, v0

    .line 265
    :goto_321
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOverHeatAppBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_33b

    .line 266
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_321

    :cond_33b
    new-array p1, v6, [F

    .line 269
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    move p1, v0

    .line 270
    :goto_340
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnhancerBrightnessStringArray:[Ljava/lang/String;

    array-length v5, v3

    if-ge p1, v5, :cond_35a

    .line 271
    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_340

    :cond_35a
    new-array p1, v4, [F

    .line 274
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    move p1, v0

    .line 275
    :goto_35f
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaStringArray:[Ljava/lang/String;

    array-length v4, v3

    if-ge p1, v4, :cond_379

    .line 276
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_35f

    .line 279
    :cond_379
    new-instance p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    .line 280
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 281
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 283
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 284
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "screen_extra_brightness"

    .line 285
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "screen_brightness_mode"

    .line 286
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "blue_light_filter"

    .line 287
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "blue_light_filter_night_dim"

    .line 288
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->display_setting_value_check()V

    return-void
.end method

.method public static sysfsWrite(Ljava/lang/String;I)Z
    .registers 5

    .line 487
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_38

    const/4 p0, 0x0

    .line 491
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_24

    .line 496
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 497
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

    .line 493
    :try_start_29
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_24

    return v1

    .line 499
    :goto_2d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 501
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 503
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    :goto_38
    return v1
.end method


# virtual methods
.method public final burn_in_brightness_compensation()V
    .registers 7

    .line 364
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10b

    :cond_1a
    const/4 v0, 0x0

    .line 367
    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_107

    const-string v2, "SemDisplaySolutionManagerService"

    if-eqz v1, :cond_65

    :try_start_2b
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3b

    goto :goto_65

    .line 370
    :cond_3b
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_7f

    .line 371
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT_SUB:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "burn_in_brightness_compensation() sub raw : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 368
    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->BURN_IN_APPLY_COUNT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "burn_in_brightness_compensation() raw : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    :goto_7f
    if-eqz v0, :cond_10b

    .line 375
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_8b} :catch_107

    .line 377
    :try_start_8b
    array-length v1, v0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v1, v3, :cond_ee

    .line 378
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAfcType:I

    const/4 v5, 0x0

    if-ne v1, v3, :cond_b0

    .line 379
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    goto :goto_10b

    :cond_b0
    const/4 v3, 0x3

    if-lt v1, v3, :cond_d0

    const/4 v3, 0x7

    if-gt v1, v3, :cond_d0

    .line 381
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    goto :goto_10b

    :cond_d0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_10b

    .line 383
    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3be56042    # 0.007f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    goto :goto_10b

    .line 387
    :cond_ee
    iput v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F
    :try_end_f0
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_f0} :catch_f1
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_f0} :catch_107

    goto :goto_10b

    :catch_f1
    move-exception p0

    .line 390
    :try_start_f2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberFormatException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_106} :catch_107

    goto :goto_10b

    :catch_107
    move-exception p0

    .line 394
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10b
    :goto_10b
    return-void
.end method

.method public final calculateAlphaBlendingValue(FFFF)F
    .registers 6

    .line 581
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateAlphaBlendingValue() currentNits : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , targetNits : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , br_ctrl : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " , gamma : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemDisplaySolutionManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-float/2addr p1, p3

    div-float/2addr p1, p2

    float-to-double p0, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p4

    float-to-double p2, p2

    .line 582
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, p0

    double-to-float p0, p2

    return p0
.end method

.method public final controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 434
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 435
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    .line 436
    iput-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    .line 437
    iput-object p3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->burn_in_brightness_compensation()V

    .line 441
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    const-string p2, "application"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 442
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz p1, :cond_74

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    mul-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_74

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "where : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " what : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " setScreenBrightnessScaleFactor("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ") , mBrightnessCompensation : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " , PMS value : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget p3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemDisplaySolutionManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessCompensation:F

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    :cond_74
    return-void
.end method

.method public final display_setting_value_check()V
    .registers 5

    .line 411
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "SemDisplaySolutionManagerService"

    if-eqz v0, :cond_42

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAutoBrightnessModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mExtraBrightnessModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    if-eqz v0, :cond_3d

    const-string v0, "extra_brightness_on"

    .line 414
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto :goto_42

    :cond_3d
    const-string v0, "extra_brightness_off"

    .line 416
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 419
    :cond_42
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHighBrightnessModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    if-nez v0, :cond_88

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    if-nez v0, :cond_88

    .line 421
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 422
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 423
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_82
    const-string p0, "IRC Mode : flat_gamma_mode"

    .line 424
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 426
    :cond_88
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 427
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 428
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_9f
    const-string p0, "IRC Mode : moderato_mode"

    .line 429
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a4
    return-void
.end method

.method public getAlphaMaskLevel(FFF)F
    .registers 7

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlphaMaskLevel() CurrentPlatformBrightnessValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , FingerPrintPlatformValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , br_ctrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , gamma : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemDisplaySolutionManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getNitsFromBrightness(F)F

    move-result p1

    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getNitsFromBrightness(F)F

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGammaArray:[F

    aget v0, v0, v2

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->calculateAlphaBlendingValue(FFFF)F

    move-result p0

    return p0
.end method

.method public getAutoCurrentLimitOffModeEnabled()Z
    .registers 1

    .line 543
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoCurrentLimitOffEnable:Z

    return p0
.end method

.method public getDouAppModeEnable()Z
    .registers 1

    .line 538
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    return p0
.end method

.method public getFingerPrintBacklightValue(I)F
    .registers 5

    const/4 v0, 0x0

    .line 558
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_4d

    .line 559
    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gt p1, v1, :cond_4a

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFingerPrintBacklightValue() brightnessNits : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , FingerPrintBacklightValue : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , mBrightnessNitsValueStringArray_Size : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemDisplaySolutionManagerService"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessBacklightValueStringArray:[Ljava/lang/String;

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 564
    :cond_4d
    sget p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->RETURN_ERROR_F:F

    return p0
.end method

.method public getGalleryModeEnable()Z
    .registers 1

    .line 533
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryEnable:Z

    return p0
.end method

.method public final getNitsFromBrightness(F)F
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_f

    .line 575
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessNitsValueStringArray:[Ljava/lang/String;

    float-to-int p1, p1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 577
    :cond_f
    sget p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->RETURN_ERROR_F:F

    return p0
.end method

.method public getOnPixelRatioValueForPMS()Ljava/lang/String;
    .registers 1

    .line 548
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOnPixelRatioValue:Ljava/lang/String;

    return-object p0
.end method

.method public final getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 p0, 0x80

    new-array v0, p0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, p0, :cond_d

    .line 457
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    const/4 p0, 0x0

    const-string v2, "File Close error"

    const-string v3, "SemDisplaySolutionManagerService"

    if-eqz p1, :cond_26

    .line 461
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

    .line 464
    :try_start_29
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_43
    .catchall {:try_start_29 .. :try_end_2d} :catchall_40

    if-lez p1, :cond_39

    .line 466
    :try_start_2f
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, p1, -0x1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object p0, v5

    .line 468
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

    .line 471
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

    .line 472
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_47 .. :try_end_76} :catchall_1f

    if-eqz p0, :cond_94

    .line 476
    :try_start_78
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_94

    .line 478
    :catch_7c
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    :goto_80
    if-eqz p0, :cond_89

    .line 476
    :try_start_82
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_89

    .line 478
    :catch_86
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_89
    :goto_89
    throw p1

    :cond_8a
    :goto_8a
    if-eqz v4, :cond_93

    .line 476
    :try_start_8c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_93

    .line 478
    :catch_90
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    :goto_93
    move-object p1, p0

    :cond_94
    :goto_94
    return-object p1
.end method

.method public getVideoEnhancerSettingState(Ljava/lang/String;)I
    .registers 2

    .line 553
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->findVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVideoModeEnable()Z
    .registers 1

    .line 528
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    return p0
.end method

.method public final getting_auto_brightness_mode_enabled()Z
    .registers 5

    .line 513
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 515
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v2, v1

    :cond_13
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessMode:Z

    return v2
.end method

.method public final getting_platform_brightness_value()F
    .registers 5

    .line 520
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 522
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPlatformBrightnessValue:F

    return v0
.end method

.method public isBlueLightFilterScheduledTime()Z
    .registers 2

    .line 747
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_d

    .line 749
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->isBlueLightFilterScheduledTime()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_d
    const/4 p0, 0x0

    .line 751
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 753
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public isMdnieScenarioControlServiceEnabled()Z
    .registers 1

    .line 587
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    return p0
.end method

.method public onAutoCurrentLimitOffMode(Z)V
    .registers 4

    .line 646
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_f

    .line 648
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_18

    .line 649
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAutoCurrentLimitOffMode(Z)V

    goto :goto_18

    .line 652
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_18

    .line 653
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAutoCurrentLimitOffMode(Z)V

    .line 656
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onAutoCurrentLimitStateChanged(Z)V
    .registers 3

    .line 607
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_d

    .line 609
    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_14

    .line 610
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    goto :goto_14

    .line 613
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_14

    .line 614
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitState(Z)V

    .line 617
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onAutoCurrentLimitStateChangedInt(I)V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_a

    .line 639
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateInt(I)V

    .line 641
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onAutoCurrentLimitStateChangedWithBrightness(Z)V
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_d

    .line 624
    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_14

    .line 625
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateWithBrightness(Z)V

    goto :goto_14

    .line 628
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_14

    .line 629
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setAutoCurrentLimitStateWithBrightness(Z)V

    .line 632
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onBurnInPreventionDisabled(Z)V
    .registers 4

    .line 661
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_f

    .line 663
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_18

    .line 664
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAutoCurrentLimitOffModeSNS(Z)V

    goto :goto_18

    .line 667
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz v1, :cond_18

    .line 668
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAutoCurrentLimitOffModeSNS(Z)V

    .line 671
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onDetailVeiwStateChanged(Z)V
    .registers 3

    .line 592
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_d

    .line 594
    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_14

    .line 595
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    goto :goto_14

    .line 598
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->adsService:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    if-eqz p0, :cond_14

    .line 599
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setGalleryDetailViewMode(Z)V

    .line 602
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public setAutoCurrentLimitOffModeEnabled(Z)V
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoCurrentLimitOffEnable:Z

    .line 699
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setBlfEnableTimeBySchedule(ZI)V
    .registers 4

    .line 738
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_a

    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlfEnableTimeBySchedule(ZI)V

    .line 742
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public setDouAppModeEnable(Z)V
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mDouAppEnable:Z

    .line 692
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setEyeComfortWeightingFactor(F)V
    .registers 3

    .line 758
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz p0, :cond_a

    .line 760
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setEyeComfortWeightingFactorValue(F)V

    .line 762
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public setGalleryModeEnable(Z)V
    .registers 3

    .line 683
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mGalleryEnable:Z

    .line 685
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setHighDynamicRangeMode(Z)V
    .registers 3

    .line 711
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz p0, :cond_a

    .line 713
    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHighDynamicRangeModeState(Z)V

    .line 715
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public setIRCompensationMode(Z)V
    .registers 6

    .line 720
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    .line 722
    :try_start_6
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string p0, "SemDisplaySolutionManagerService"

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIRCompensationMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") IRC Mode : moderato_mode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 725
    :cond_28
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    if-eqz v2, :cond_53

    .line 726
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string v1, "SemDisplaySolutionManagerService"

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIRCompensationMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") IRC Mode : moderato_mode , vivid mode :"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 729
    :cond_53
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    const-string v1, "SemDisplaySolutionManagerService"

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIRCompensationMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") IRC Mode : flat_gamma_mode , vivid mode :"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_7a
    monitor-exit v0

    return-void

    :catchall_7c
    move-exception p0

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_6 .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method public setMdnieScenarioControlServiceEnable(Z)V
    .registers 3

    .line 704
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    .line 706
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .registers 10

    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 824
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 826
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getting_auto_brightness_mode_enabled()Z

    move-result v2

    .line 827
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getting_platform_brightness_value()F

    move-result v3

    .line 829
    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_13
    const-string v5, "SemDisplaySolutionManagerService"

    .line 830
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , name : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_757

    .line 832
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    if-eqz p1, :cond_757

    const-string v0, "color_blind_on"

    .line 834
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_188

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "color_blind_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    goto/16 :goto_188

    .line 841
    :cond_58
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v5, "real_hdr_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_168

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v5, "real_hdr_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    goto/16 :goto_168

    .line 848
    :cond_70
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "extra_brightness_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14a

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "extra_brightness_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_86

    goto/16 :goto_14a

    .line 855
    :cond_86
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_136

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_136

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_136

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_136

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_5"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_136

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_on_6"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_136

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cd

    goto :goto_136

    .line 862
    :cond_cd
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "browser_brightness_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_116

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "browser_brightness_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e2

    goto :goto_116

    .line 869
    :cond_e2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "burnin_prevention_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f6

    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "burnin_prevention_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a5

    .line 870
    :cond_f6
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "burnin_prevention_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_108

    .line 871
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    .line 872
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    goto/16 :goto_1a5

    .line 873
    :cond_108
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "burnin_prevention_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a5

    .line 874
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    goto/16 :goto_1a5

    .line 863
    :cond_116
    :goto_116
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "browser_brightness_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_128

    .line 864
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    .line 865
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    goto/16 :goto_1a5

    .line 866
    :cond_128
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "browser_brightness_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a5

    .line 867
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    goto/16 :goto_1a5

    .line 856
    :cond_136
    :goto_136
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "brightness_scale_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_143

    .line 857
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    goto :goto_1a5

    .line 859
    :cond_143
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    .line 860
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    goto :goto_1a5

    .line 849
    :cond_14a
    :goto_14a
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "extra_brightness_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15b

    .line 850
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_EXTRA_BRIGHTNESS_ON:Ljava/lang/String;

    .line 851
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    goto :goto_1a5

    .line 852
    :cond_15b
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "extra_brightness_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a5

    .line 853
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    goto :goto_1a5

    .line 842
    :cond_168
    :goto_168
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v5, "real_hdr_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17a

    .line 843
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_REAL_HDR_ON:Ljava/lang/String;

    .line 844
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_1a5

    .line 845
    :cond_17a
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v5, "real_hdr_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a5

    .line 846
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_1a5

    .line 835
    :cond_188
    :goto_188
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "color_blind_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_199

    .line 836
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_COLOR_BLIND_ON:Ljava/lang/String;

    .line 837
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    goto :goto_1a5

    .line 838
    :cond_199
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string v5, "color_blind_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a5

    .line 839
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    .line 878
    :cond_1a5
    :goto_1a5
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    if-eqz p1, :cond_1d1

    .line 879
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "ColorBlind"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, ColorBlind, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 881
    :cond_1d1
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    if-eqz p1, :cond_1f9

    .line 882
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    const-string v0, "application"

    const-string v1, "RealHDR"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMultipleScreenBrightness , application, RealHDR, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 884
    :cond_1f9
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightness:Z

    if-eqz p1, :cond_225

    .line 885
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "ExtraBrightness"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, ExtraBrightness, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessExtraBrightnessArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 887
    :cond_225
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrowserAppBrightnessControl:Z

    const/16 v5, 0xff

    if-eqz p1, :cond_329

    :cond_22b
    :goto_22b
    const/16 p1, 0x14

    if-ge v1, p1, :cond_757

    .line 889
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BROWSER_APP_BRIGHTNESS_ON:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browser_brightness_on_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22b

    const-string p1, "SemDisplaySolutionManagerService"

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastScaleFactorValue : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , (Float)((100 - (i+1)) * 0.01f) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v2, v1, 0x64

    int-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " , Float.compare(mLastScaleFactorValue, (Float)((100 - (i+1)) * 0.01f)) : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    if-ne p1, v5, :cond_2e2

    .line 892
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_2bd

    .line 893
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v0, "application"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BrowserAppBrightnessControl_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    :cond_2bd
    const-string p1, "SemDisplaySolutionManagerService"

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, BrowserAppBrightnessControl_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22b

    .line 898
    :cond_2e2
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    int-to-float v0, v1

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr p1, v2

    const-string v2, "application"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BrowserAppBrightnessControl_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, BrowserAppBrightnessControl_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22b

    .line 903
    :cond_329
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAppBrightnessScale:Z

    if-eqz p1, :cond_6c4

    .line 904
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v6, "brightness_scale_on_1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36f

    .line 905
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v5, "HDREffect_1"

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMultipleScreenBrightness , application, HDREffect_1, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 907
    :cond_36f
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v6, "brightness_scale_on_2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz p1, :cond_4c6

    if-eqz v2, :cond_3b5

    .line 909
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v5, "HDREffect_2"

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    :cond_3b5
    if-nez v2, :cond_757

    .line 912
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    if-eq p1, v5, :cond_457

    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_VERSION:I

    const/4 v5, 0x2

    if-lt p1, v5, :cond_457

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->getDouAppModeEnable()Z

    move-result p1

    if-eqz p1, :cond_457

    .line 913
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v0

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p1, v0

    cmpg-float p1, v3, p1

    if-gez p1, :cond_413

    .line 914
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v5, "HDREffect_2"

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 917
    :cond_413
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const-string v0, "application"

    const-string v1, "HDREffect_2"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float p0, p0

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 922
    :cond_457
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget v0, p1, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_495

    .line 923
    aget p1, p1, v1

    const-string v0, "application"

    const-string v5, "HDREffect_2"

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessVideoEnhancerArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    :cond_495
    div-float/2addr v6, v3

    const-string p1, "application"

    const-string v0, "HDREffect_2"

    .line 926
    invoke-virtual {p0, v6, p1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p0, "SemDisplaySolutionManagerService"

    .line 927
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setMultipleScreenBrightness , application, HDREffect_2, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " auto_brightness_enabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " platform_brightness_value : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 931
    :cond_4c6
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v0, "brightness_scale_on_3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_534

    if-eqz v2, :cond_502

    .line 933
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v3, "GalleryAppScaleUp"

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, GalleryAppScaleUp, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessGalleryAppArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    :cond_502
    if-nez v2, :cond_757

    .line 936
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v3, "GalleryAppScaleUp"

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, GalleryAppScaleUp, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 939
    :cond_534
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v0, "brightness_scale_on_4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a2

    if-eqz v2, :cond_570

    .line 941
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v3, "SamsungVideoAppScaleUp"

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, SamsungVideoAppScaleUp, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessSamsungVideoAppArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    :cond_570
    if-nez v2, :cond_757

    .line 944
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v3, "SamsungVideoAppScaleUp"

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, SamsungVideoAppScaleUp, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 947
    :cond_5a2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v0, "brightness_scale_on_5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_692

    if-nez v2, :cond_757

    .line 949
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v0, p1

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_66a

    int-to-float p1, p1

    sub-float p1, v3, p1

    .line 950
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v0, v0

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr p1, v0

    sub-float p1, v1, p1

    const-string v0, "application"

    const-string v5, "DouScaleDown"

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    .line 951
    iget p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float p1, p1

    sub-float p1, v3, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v0, v0

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    mul-float/2addr p1, v0

    sub-float p1, v1, p1

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    const-string p1, "SemDisplaySolutionManagerService"

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMultipleScreenBrightness , application, DouScaleDown, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_SUPPORT_VALUE:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    div-float/2addr v5, v7

    iget p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DOU_BRIGHTNESS_STANDARD_VALUE:I

    int-to-float p0, p0

    div-float/2addr p0, v6

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float p0, v1, p0

    mul-float/2addr v5, p0

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " ,platform_brightness_value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " ,auto_brightness_enabled : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 955
    :cond_66a
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "DouScaleDown"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, DouScaleDown, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 959
    :cond_692
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_APP_BRIGHTNESS_SCALE_ON:Ljava/lang/String;

    const-string v0, "brightness_scale_on_6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_757

    .line 960
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "OverHeatScaleDown"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "SemDisplaySolutionManagerService"

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultipleScreenBrightness , application, OverHeatScaleDown, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBrightnessOverHeatAppArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_757

    .line 963
    :cond_6c4
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInPrevention:Z

    if-eqz p1, :cond_72c

    :goto_6c8
    const/16 p1, 0xa

    if-ge v1, p1, :cond_757

    .line 965
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_BURNIN_PREVENTION_ON:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "burnin_prevention_on_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72a

    .line 966
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BurnInPrevention_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    const-string p1, "SemDisplaySolutionManagerService"

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMultipleScreenBrightness , application, BurnInPrevention_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mBurnInScaleFactorValueArray:[F

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72a
    move v1, v2

    goto :goto_6c8

    .line 972
    :cond_72c
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    const-string v0, "application"

    const-string v2, "DEFAULT"

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLastScaleFactorValue:F

    const-string p1, "SemDisplaySolutionManagerService"

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Normal Mode setMultipleScreenBrightness , application, DEFAULT, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_757
    :goto_757
    monitor-exit v4

    return-void

    :catchall_759
    move-exception p0

    monitor-exit v4
    :try_end_75b
    .catchall {:try_start_13 .. :try_end_75b} :catchall_759

    throw p0
.end method

.method public setMultipleScreenBrightnessValueForHDR(F)V
    .registers 3

    .line 808
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_3
    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighDynamicRangeScaleFactorValue:F

    .line 810
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setOnPixelRatioValueForPMS(Ljava/lang/String;)V
    .registers 3

    .line 815
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mOnPixelRatioValue:Ljava/lang/String;

    .line 817
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setScreenBrightnessForPreview(I)V
    .registers 2

    .line 785
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 803
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setSleepPatternBLF(Ljava/lang/String;JJF)V
    .registers 15

    .line 776
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->ecsService:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    if-eqz v1, :cond_e

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    .line 778
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateRubinSleepPattern(Ljava/lang/String;JJF)V

    .line 780
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setVideoEnhancerSettingState(Ljava/lang/String;I)V
    .registers 4

    .line 767
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    if-eqz p0, :cond_a

    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateVideoEnhancerSettingState(Ljava/lang/String;I)V

    .line 771
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public setVideoModeEnable(Z)V
    .registers 3

    .line 676
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_3
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    .line 678
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final setting_is_changed()V
    .registers 6

    .line 400
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_brightness_mode_pms_enter"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 402
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_13

    move v1, v4

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    const-string/jumbo v1, "screen_mode_automatic_setting"

    .line 403
    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_21

    move v1, v4

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    const-string/jumbo v1, "screen_extra_brightness"

    .line 404
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_2f

    move v1, v4

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    const-string/jumbo v1, "screen_brightness_mode"

    .line 405
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_3c

    move v2, v4

    :cond_3c
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHighBrightnessModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mAdaptiveScreenModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mExtraBrightnessModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mAutoBrightnessModeEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemDisplaySolutionManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
