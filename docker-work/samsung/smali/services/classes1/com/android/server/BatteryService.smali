.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$Shell;,
        Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;,
        Lcom/android/server/BatteryService$TimeChangedReceiver;,
        Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;,
        Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;,
        Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;,
        Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;,
        Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$PassThroughSettingsObserver;,
        Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;,
        Lcom/android/server/BatteryService$LedSettingsObserver;,
        Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_MODE_CHANGE:Ljava/lang/String; = "android.samsung.media.action.AUDIO_MODE"

.field public static ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field public static final ACTION_FAST_WIRELESS_CHARGING_CONTROL:Ljava/lang/String; = "com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL"

.field public static final ACTION_SECSETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final ACTION_SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

.field public static final ACTION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

.field public static final ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

.field public static final ASOC_UPDATE_THRESHOLD:I = 0xa

.field public static final BATTERY_BEGINNING_DATE_PATH:Ljava/lang/String; = "/efs/FactoryApp/batt_beginning_date"

.field public static final BATTERY_HEALTH_OVERHEATLIMIT:I = 0x8

.field public static final BATTERY_LEVEL_CHANGE_THROTTLE_MS:J = 0xea60L

.field public static final BATTERY_ONLINE_FAST_WIRELESS_CHARGER:I = 0x64

.field public static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field public static final BATTERY_ONLINE_NONE:I = 0x1

.field public static final BATTERY_ONLINE_POGO:I = 0x17

.field public static final BATTERY_ONLINE_TA:I = 0x3

.field public static final BATTERY_ONLINE_USB:I = 0x4

.field public static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field public static final BATTERY_PLUGGED_NONE:I = 0x0

.field public static final BATTERY_SCALE:I = 0x64

.field public static final BATTERY_USAGE_PERIOD_FOR_ASOC_UPDATE:I = 0x64

.field public static final BATT_HV_WIRELESS_STATUS_0V:I = 0x0

.field public static final BATT_HV_WIRELESS_STATUS_5V:I = 0x1

.field public static final BATT_HV_WIRELESS_STATUS_9V:I = 0x2

.field public static final BATT_SLATE_MODE_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_slate_mode"

.field public static final BATT_SLATE_MODE_PERMISSION:Ljava/lang/String; = "com.sec.permission.OTG_CHARGE_BLOCK"

.field public static final CALL_END:I = 0x0

.field public static final CALL_START:I = 0x2

.field public static final CALL_START_DELEY:I = 0x1f4

.field public static final CALL_VIDEO:I = 0x3

.field public static final DEBUG:Z = false

.field public static final DEFAULT_BATTERY_LIMIT:I = 0x1e

.field public static final DUMPSYS_ARGS:[Ljava/lang/String;

.field public static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field public static final EXTRA_BATT_SLATE_MODE:Ljava/lang/String; = "state"

.field public static final EXTRA_READ:Ljava/lang/String; = "read"

.field public static final EXTRA_VALUE_AUDIO_MODE_CHANGE:Ljava/lang/String; = "android.samsung.media.extra.AUDIO_MODE"

.field public static final EXTRA_WIRELESS_POWER_SHARING_EXTRA:Ljava/lang/String; = "enable"

.field public static final EXTRA_WRITE:Ljava/lang/String; = "write"

.field public static final FEATURE_HICCUP_CONTROL:Z

.field public static final FEATURE_SAVE_BATTERY_CYCLE:Z

.field public static final FEATURE_SUPPORTED_DAILY_BOARD:Z

.field public static final FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

.field public static final FULL_CAPACITY_DISABLE:I = 0x64

.field public static final FULL_CAPACITY_ENABLE:I = 0x55

.field public static final FULL_CHARGING_DURATION:J = 0x2932e00L

.field public static final HEALTH_HAL_WAIT_MS:J = 0x3e8L

.field public static final HICCUP_DISABLE:Ljava/lang/String; = "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

.field public static final HICCUP_MISC_EVENT_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_misc_event"

.field public static final HICCUP_POPUP_SHOW:Ljava/lang/String; = "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

.field public static final HICCUP_SUPPORT_SYSFS_PATH:Ljava/lang/String; = "/sys/class/sec/switch/hiccup"

.field public static final INCREASE_CYCLE_COUNT_BATTERY_LIFE_EXTENDER:J = 0x2710L

.field public static final INCREASE_CYCLE_COUNT_ONE_MONTH:J = 0x3cL

.field public static final LED_CHARGING_SETTINGS_URI:Ljava/lang/String; = "led_indicator_charing"

.field public static final LED_LOW_BATTERY_SETTINGS_URI:Ljava/lang/String; = "led_indicator_low_battery"

.field public static final LIGHT_SEC_FLASH_OFF:I = 0x0

.field public static final LLB_ERROR:I = 0x2

.field public static final LLB_NEED_RETRY:I = 0x3

.field public static final LLB_SUCCEED:I = 0x1

.field public static final MAX_BATTERY_LEVELS_QUEUE_SIZE:I = 0x64

.field public static final MSG_CALL_END:I = 0x1

.field public static final MSG_CALL_START:I = 0x0

.field public static final MSG_CALL_VIDEO:I = 0x2

.field public static final OPTION_FORCE_UPDATE:I = 0x1

.field public static final OTG_CHARGE_BLOCK_ENABLE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/otg/online"

.field public static final OTG_CHARGE_BLOCK_PERMISSION:Ljava/lang/String; = "com.sec.permission.OTG_CHARGE_BLOCK"

.field public static final OVER_CURRENT_THRESHOLD:I = 0x0

.field public static final PACKAGE_DAILY_BOARD:Ljava/lang/String; = "com.samsung.android.homemode"

.field public static final PACKAGE_DEVICE_CARE:Ljava/lang/String;

.field public static final PASS_THROUGH_SYSFS_PATHS:Ljava/lang/String; = "/sys/class/power_supply/battery/pass_through"

.field public static final PATH_ASOC_NOW:Ljava/lang/String; = "/sys/class/power_supply/battery/fg_asoc"

.field public static final PATH_BATTERY_MAX_CURRENT:Ljava/lang/String; = "/efs/FactoryApp/max_current"

.field public static final PATH_BATTERY_MAX_TEMP:Ljava/lang/String; = "/efs/FactoryApp/max_temp"

.field public static final PATH_EFS_ASOC:Ljava/lang/String; = "/efs/FactoryApp/asoc"

.field public static final PATH_EFS_BATT_FULL_CAPACITY:Ljava/lang/String; = "/efs/Battery/batt_full_capacity"

.field public static final PATH_LOG_BATTERY_USAGE:Ljava/lang/String; = "/efs/FactoryApp/batt_discharge_level"

.field public static final PATH_SYSFS_BATTERY_CYCLE:Ljava/lang/String; = "/sys/class/power_supply/battery/battery_cycle"

.field public static final PATH_SYSFS_BATT_FULL_CAPACITY:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_full_capacity"

.field public static final PERMISSION_FAST_WIRELESS_CHARGING_CONTROL:Ljava/lang/String; = "com.samsung.android.permission.FAST_WIRELESS_CHARGING_CONTROL"

.field public static final PERMISSION_WIRELESS_POWER_SHARING:Ljava/lang/String; = "com.samsung.android.permission.wirelesspowersharing"

.field public static final POGO_NONE:I = 0x0

.field public static final POGO_ONLY:I = 0x1

.field public static final POGO_WITH_OTHERS:I = 0x2

.field public static final PROPERTY_WIRELESS_FAST_CHARGING:Ljava/lang/String; = "persist.service.battery.wfc"

.field public static final REFRESH_RATE_MODE_NORMAL:I = 0x5

.field public static final REFRESH_RATE_MODE_SEAMLESS:I = 0x6

.field public static final REQUEST_BATT_SLATE_MODE_CHANGE:Ljava/lang/String; = "com.sec.intent.action.BATT_SLATE_MODE_CHANGE"

.field public static final REQUEST_OTG_CHARGE_BLOCK:Ljava/lang/String; = "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

.field public static final RESPONSE_OTG_CHARGE_BLOCK:Ljava/lang/String; = "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

.field public static final SCREEN_STATE_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/lcd"

.field public static final SETTING_GLOBAL_PROTECT_BATTERTY:Ljava/lang/String; = "protect_battery"

.field public static final SETTING_PASS_THROUGH:Ljava/lang/String; = "pass_through"

.field public static final SETTING_PROTECT_BATTERY:Ljava/lang/String; = "protect_battery"

.field public static final SETTING_SHOW_WIRELESS_CHARGER_MENU:Ljava/lang/String; = "show_wireless_charger_menu"

.field public static final SETTING_SUPER_FAST_CHARGING:Ljava/lang/String; = "super_fast_charging"

.field public static final SETTING_TX_BATTERY_LIMIT:Ljava/lang/String; = "tx_battery_limit"

.field public static final SETTING_WC_PARAM:Ljava/lang/String; = "wireless_wc_write"

.field public static final SETTING_WIRELESS_FAST_CHARGING:Ljava/lang/String; = "wireless_fast_charging"

.field public static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field public static final SUPER_FAST_CHARGING_DISABLE_SYSFS_PATHS:Ljava/lang/String; = "/sys/class/power_supply/battery/pd_disable"

.field public static final SYSFS_BATT_HV_WIRELESS_PAD_CTRL:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

.field public static final TAG:Ljava/lang/String; = "BatteryService"

.field public static final TAG_BATTERY_INFO:Ljava/lang/String; = "!@[BatteryInfo] "

.field public static final TAG_BEGINNING_DATE:Ljava/lang/String; = "!@[B_DATE] "

.field public static final TAG_CSCFEATURE_COMMON_CONFIGIMPLICITBROADCASTS:Ljava/lang/String; = "CscFeature_COMMON_ConfigImplicitBroadcasts"

.field public static final TAG_LLB:Ljava/lang/String; = "!@[LLB] "

.field public static final WC_PARAM_INFO_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/wc_param_info"

.field public static final WEEKLY_DIFF_EFS_PATH:Ljava/lang/String; = "/efs/FactoryApp/batt_after_manufactured"

.field public static final WEEKLY_DIFF_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_after_manufactured"

.field public static final WIRELESS_ENABLE_SYSFS_PATH_FOR_EPEN:Ljava/lang/String; = "/sys/class/sec/sec_epen/epen_wcharging_mode"

.field public static final WIRELESS_ENABLE_SYSFS_PATH_FOR_MUIC:Ljava/lang/String; = "/sys/class/sec/switch/wireless"

.field public static final WIRELESS_ENABLE_SYSFS_PATH_FOR_TSP:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field public static final WIRELESS_ENABLE_SYSFS_VALUE_BACKPACK_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,3"

.field public static final WIRELESS_ENABLE_SYSFS_VALUE_CHARGER_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,1"

.field public static final WIRELESS_ENABLE_SYSFS_VALUE_NONE_FOR_TSP:Ljava/lang/String; = "set_wirelesscharger_mode,0"

.field public static final WIRELESS_POWER_SHARING_SYSFS_EXTERNEL_EVENT_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/ext_event"

.field public static final WIRELESS_POWER_SHARING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/wc_tx_en"

.field public static final WIRELESS_POWER_SHARING_SYSFS_TX_BATTERY_LIMIT:Ljava/lang/String; = "/sys/class/power_supply/battery/wc_tx_stop_capacity"


# instance fields
.field public final ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

.field public final HEALTH_INSTANCE_VENDOR:Ljava/lang/String;

.field public final SSRM_PERMISSION:Ljava/lang/String;

.field public isVideoCall:Z

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityManagerReady:Z

.field public final mAdaptiveFastChargingOffset:I

.field public mAdaptiveFastChargingSettingsEnable:Z

.field public mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

.field public mAfcDisableSysFs:Ljava/lang/String;

.field public mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mBattSlateModeControlReceiver:Landroid/content/BroadcastReceiver;

.field public mBatteryCapacity:I

.field public mBatteryInputSuspended:Z

.field public mBatteryLevelCritical:Z

.field public mBatteryLevelLow:Z

.field public mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public mBatteryMaxCurrent:J

.field public mBatteryMaxTemp:J

.field public mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBatteryUsageSinceLastAsocUpdate:I

.field public mBinderService:Lcom/android/server/BatteryService$BinderService;

.field public mBootCompleted:Z

.field public mCallHandler:Landroid/os/Handler;

.field public mCallHandlerThread:Landroid/os/HandlerThread;

.field public mChargeStartLevel:I

.field public mChargeStartTime:J

.field public final mContext:Landroid/content/Context;

.field public mCriticalBatteryLevel:I

.field public mCurrentBatteryUsage:J

.field public mCurrentCalendar:Ljava/util/Calendar;

.field public mDexReceiver:Landroid/content/BroadcastReceiver;

.field public mDischargeStartLevel:I

.field public mDischargeStartTime:J

.field public mEnableIqi:Z

.field public mFastWirelessAutoModeReceiver:Landroid/content/BroadcastReceiver;

.field public mFullCapacityEnable:Z

.field public mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

.field public mFullChargingOnDockStartTime:J

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

.field public mHealthInfo:Landroid/hardware/health/HealthInfo;

.field public mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

.field public mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

.field public mIncreasingCycleCnt:J

.field public final mIntentCheckCooldownLevel:Landroid/content/Intent;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mInvalidCharger:I

.field public mIsFirstIntentSended:Z

.field public mIsHiccupPopupShowing:Z

.field public mIsWirelessTxSupported:Z

.field public mLastBatteryChargeType:I

.field public mLastBatteryCurrentEvent:I

.field public mLastBatteryCurrentNow:I

.field public mLastBatteryEvent:I

.field public mLastBatteryEventWaterInConnector:Z

.field public mLastBatteryHealth:I

.field public mLastBatteryHighVoltageCharger:I

.field public mLastBatteryLevel:I

.field public mLastBatteryLevelChangedSentMs:J

.field public mLastBatteryLevelCritical:Z

.field public mLastBatteryOnline:I

.field public mLastBatteryPowerSharingOnline:Z

.field public mLastBatteryPresent:Z

.field public mLastBatterySecTxShareEvent:I

.field public mLastBatteryStatus:I

.field public mLastBatteryTemperature:I

.field public mLastBatteryVoltage:I

.field public mLastDeterioration:I

.field public mLastInvalidCharger:I

.field public mLastLowBatteryWarningLevel:I

.field public mLastMaxChargingCurrent:I

.field public mLastMaxChargingVoltage:I

.field public mLastPlugType:I

.field public mLastSecPlugTypeSummary:I

.field public final mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

.field public mLastTxEventRxConnected:Z

.field public mLastTxEventTxEnabled:Z

.field public mLastWirelessBackPackChargingStatus:Z

.field public mLastWirelessChargingStatus:Z

.field public mLastWirelessPinDetected:Z

.field public mLastWirelessPowerSharingExternelEvent:I

.field public mLastWirelessPowerSharingTxEvent:I

.field public mLastchargerPogoOnline:Z

.field public mLed:Lcom/android/server/BatteryService$Led;

.field public mLedChargingSettingsEnable:Z

.field public mLedLowBatterySettingsEnable:Z

.field public mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

.field public mLifeExtender:Z

.field public mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

.field public final mLock:Ljava/lang/Object;

.field public final mLockBatteryInfoBackUp:Ljava/lang/Object;

.field public mLongBatteryRetryCnt:I

.field public mLowBatteryCloseWarningLevel:I

.field public mLowBatteryWarningLevel:I

.field public mManufactureDate:Ljava/lang/String;

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mNotifyWirelessEnabled:Z

.field public mPassThroughSettingsEnable:Z

.field public mPassThroughSettingsObserver:Lcom/android/server/BatteryService$PassThroughSettingsObserver;

.field public mPlugType:I

.field public mPogoCondition:I

.field public mPogoDockIntent:I

.field public mRefreshRateModeSetting:I

.field public mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

.field public mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

.field public mRfCalDate:Ljava/lang/String;

.field public final mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

.field public final mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

.field public final mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

.field public mSavedBatteryAsoc:J

.field public mSavedBatteryBeginningDate:I

.field public mSavedBatteryMaxCurrent:J

.field public mSavedBatteryMaxTemp:J

.field public mSavedBatteryUsage:J

.field public mSavedDiffWeek:I

.field public mScreenOn:Z

.field public mSecPlugTypeSummary:I

.field public mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

.field public mSentLowBatteryBroadcast:Z

.field public mSequence:I

.field public mShutdownBatteryTemperature:I

.field public final mSuperFastChargingOffset:I

.field public mSuperFastChargingSettingsEnable:Z

.field public mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

.field public mTxBatteryLimit:I

.field public mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

.field public final mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

.field public final mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

.field public final mUpdateBatteryUsageFullCapacityEnableRunnable:Ljava/lang/Runnable;

.field public final mUpdateBatteryUsageOnDockRunnable:Ljava/lang/Runnable;

.field public mUpdatesStopped:Z

.field public mWasUsedWirelessFastChargerPreviously:Z

.field public mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

.field public final mWcParamOffset:I

.field public final mWirelessFastChargingOffset:I

.field public mWirelessFastChargingSettingsEnable:Z

.field public mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

.field public mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

.field public tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$BBvTF9zr3jlUbHVZimjkg7NVAgQ(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method public static synthetic $r8$lambda$H-8Up3uyzMOD2FY1PZschrEC8Uc(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->lambda$resetBattery$4(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KIiv-AdqNL7comKTEbFSnJw2Wos(Lcom/android/server/BatteryService;Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_mHC0WCE0sa8BZmFkwxzQRhhzHs(Lcom/android/server/BatteryService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->lambda$setBatteryLevel$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$h_vC1z9JQQ83NLA0NqXIu8MVnnI(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->lambda$unplugBattery$3(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qoqQpaPDQ607g0nVB_kJpcEBPPY(Lcom/android/server/BatteryService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->lambda$setChargerAcOnline$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$r64V5AVg_Okl7PnB1VjeN4oyo1I(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/BatteryService;->lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdaptiveFastChargingSettingsEnable(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryLevelCritical(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryLevelLow(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryMaxCurrent(Lcom/android/server/BatteryService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryMaxTemp(Lcom/android/server/BatteryService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStats(Lcom/android/server/BatteryService;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentBatteryUsage(Lcom/android/server/BatteryService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mCurrentBatteryUsage:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableIqi(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFullCapacityEnable(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFullChargingOnDockStartTime(Lcom/android/server/BatteryService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandlerForBatteryInfoBackUp(Lcom/android/server/BatteryService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthServiceWrapper(Lcom/android/server/BatteryService;)Lcom/android/server/health/HealthServiceWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIncreasingCycleCnt(Lcom/android/server/BatteryService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmInvalidCharger(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastTxEventTxEnabled(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLed(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLedChargingSettingsEnable(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLedLowBatterySettingsEnable(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLifeExtender(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockBatteryInfoBackUp(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLongBatteryRetryCnt(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowBatteryWarningLevel(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPassThroughSettingsEnable(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPlugType(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPogoCondition(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPogoDockIntent(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRefreshRateModeSetting(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSaveBatteryUsageRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSavedBatteryMaxCurrent(Lcom/android/server/BatteryService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSavedBatteryMaxTemp(Lcom/android/server/BatteryService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecPlugTypeSummary(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSehHealthInfo(Lcom/android/server/BatteryService;)Lvendor/samsung/hardware/health/SehHealthInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSuperFastChargingSettingsEnable(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTxBatteryLimit(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateBatteryUsageExtenderRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateBatteryUsageFullCapacityEnableRunnable(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWasUsedWirelessFastChargerPreviously(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWcParamOffset(Lcom/android/server/BatteryService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWirelessFastChargingSettingsEnable(Lcom/android/server/BatteryService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAdaptiveFastChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBootCompleted(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentBatteryUsage(Lcom/android/server/BatteryService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mCurrentBatteryUsage:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFullCapacityEnable(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIncreasingCycleCnt(Lcom/android/server/BatteryService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInvalidCharger(Lcom/android/server/BatteryService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsFirstIntentSended(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsHiccupPopupShowing(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLedChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLedLowBatterySettingsEnable(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLifeExtender(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLongBatteryRetryCnt(Lcom/android/server/BatteryService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPassThroughSettingsEnable(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRefreshRateModeSetting(Lcom/android/server/BatteryService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSavedBatteryAsoc(Lcom/android/server/BatteryService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSavedBatteryMaxCurrent(Lcom/android/server/BatteryService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSavedBatteryMaxTemp(Lcom/android/server/BatteryService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSavedBatteryUsage(Lcom/android/server/BatteryService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSuperFastChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTxBatteryLimit(Lcom/android/server/BatteryService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWasUsedWirelessFastChargerPreviously(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWirelessFastChargingSettingsEnable(Lcom/android/server/BatteryService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckLongLifeBatteryInternal(Lcom/android/server/BatteryService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->checkLongLifeBatteryInternal()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDeviceSecurityPackageName(Lcom/android/server/BatteryService;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getDeviceSecurityPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitializeSavedAsoc(Lcom/android/server/BatteryService;J)J
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->initializeSavedAsoc(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$misPoweredLocked(Lcom/android/server/BatteryService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadBatteryAsocFromEfsLocked(Lcom/android/server/BatteryService;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mreadBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;)J
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mreadBatteryMaxCurrentFromEfsLocked(Lcom/android/server/BatteryService;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->readBatteryMaxCurrentFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mreadBatteryMaxTempFromEfsLocked(Lcom/android/server/BatteryService;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mreadBatteryUsageFromEfsLocked(Lcom/android/server/BatteryService;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->readBatteryUsageFromEfsLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mreadFromFile(Lcom/android/server/BatteryService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mresetBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->resetBattery(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendOTGIntentLocked(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->sendOTGIntentLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBatteryLevel(Lcom/android/server/BatteryService;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->setBatteryLevel(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setCallWirelessPowerSharingExternelEvent(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetChargerAcOnline(Lcom/android/server/BatteryService;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->setChargerAcOnline(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetFullChargingOnDockStartTime(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->setFullChargingOnDockStartTime()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRefreshRateMode(Lcom/android/server/BatteryService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setRefreshRateMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWcParamInfo(Lcom/android/server/BatteryService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setWcParamInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWirelessFastCharging(Lcom/android/server/BatteryService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWirelessPowerSharingExternelEventInternal(Lcom/android/server/BatteryService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWirelessPowerSharingTxBatteryLimit(Lcom/android/server/BatteryService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingTxBatteryLimit(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msuspendBatteryInput(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->suspendBatteryInput()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munplugBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->unplugBattery(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBatteryDate(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryDate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBatteryWarningLevelLocked(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetFEATURE_SAVE_BATTERY_CYCLE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetFEATURE_SUPPORTED_DAILY_BOARD()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPACKAGE_DEVICE_CARE()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smfileWriteInt(Ljava/lang/String;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/BatteryService;->sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    .line 211
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    const-string v0, "/sys/class/sec/switch/afc_disable"

    const-string/jumbo v1, "sys/class/sec/afc/afc_disable"

    .line 222
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    const-string v0, "/sys/class/sec/switch/hiccup"

    .line 266
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 287
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    const-string v0, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    .line 298
    sput-object v0, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    const-string v0, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    .line 299
    sput-object v0, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    const-string v0, "/sys/class/power_supply/battery/battery_cycle"

    .line 476
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 534
    invoke-static {}, Lcom/android/server/BatteryService;->isSupportedDailyBoard()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    .line 1852
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 17

    move-object v0, p0

    move-object/from16 v7, p1

    .line 1135
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    .line 267
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 315
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 335
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 339
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 346
    new-instance v1, Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-direct {v1}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    const/4 v9, 0x1

    .line 362
    iput v9, v0, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v10, -0x1

    .line 373
    iput v10, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 377
    iput v10, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 393
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 404
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 412
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 415
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 417
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 418
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 423
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 428
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 433
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 444
    iput v8, v0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    .line 445
    iput v8, v0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 451
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 454
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 455
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 460
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    const v1, 0x445c0

    .line 463
    iput v1, v0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    .line 465
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    const-wide/16 v1, -0x1

    .line 480
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 481
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 482
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    .line 483
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    .line 486
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 487
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    const-wide/16 v3, 0x0

    .line 488
    iput-wide v3, v0, Lcom/android/server/BatteryService;->mCurrentBatteryUsage:J

    .line 489
    iput v8, v0, Lcom/android/server/BatteryService;->mBatteryUsageSinceLastAsocUpdate:I

    .line 502
    iput v8, v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 503
    iput v10, v0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 512
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    .line 513
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    .line 519
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 530
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 539
    iput v8, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 540
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 545
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 546
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    const-string v1, "com.samsung.CHECK_COOLDOWN_LEVEL"

    .line 550
    iput-object v1, v0, Lcom/android/server/BatteryService;->ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String;

    .line 551
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const-string v1, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    .line 552
    iput-object v1, v0, Lcom/android/server/BatteryService;->SSRM_PERMISSION:Ljava/lang/String;

    const-string v1, "default"

    .line 559
    iput-object v1, v0, Lcom/android/server/BatteryService;->HEALTH_INSTANCE_VENDOR:Ljava/lang/String;

    .line 574
    iput v8, v0, Lcom/android/server/BatteryService;->mSavedBatteryBeginningDate:I

    .line 578
    new-instance v1, Lcom/android/server/BatteryService$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 659
    new-instance v1, Lcom/android/server/BatteryService$2;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mBattSlateModeControlReceiver:Landroid/content/BroadcastReceiver;

    .line 671
    new-instance v1, Lcom/android/server/BatteryService$3;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

    .line 693
    new-instance v1, Lcom/android/server/BatteryService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

    .line 756
    new-instance v1, Lcom/android/server/BatteryService$5;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

    .line 778
    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mDexReceiver:Landroid/content/BroadcastReceiver;

    .line 851
    new-instance v1, Lcom/android/server/BatteryService$8;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 882
    new-instance v1, Lcom/android/server/BatteryService$9;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mFastWirelessAutoModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1855
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 1856
    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 1860
    iput v8, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 3360
    new-instance v1, Lcom/android/server/BatteryService$30;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$30;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    .line 3400
    new-instance v1, Lcom/android/server/BatteryService$31;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$31;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    .line 3429
    new-instance v1, Lcom/android/server/BatteryService$32;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$32;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    .line 3474
    new-instance v1, Lcom/android/server/BatteryService$33;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$33;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    .line 3498
    new-instance v1, Lcom/android/server/BatteryService$34;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$34;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageOnDockRunnable:Ljava/lang/Runnable;

    .line 3529
    new-instance v1, Lcom/android/server/BatteryService$35;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$35;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    .line 3561
    new-instance v1, Lcom/android/server/BatteryService$36;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$36;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Ljava/lang/Runnable;

    .line 1137
    iput-object v7, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 1138
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11, v9}, Landroid/os/Handler;-><init>(Z)V

    iput-object v11, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 1139
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v9}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 1140
    new-instance v1, Lcom/android/server/BatteryService$Led;

    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    invoke-direct {v1, p0, v7, v2}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 1141
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1142
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1144
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1148
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 1150
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 1153
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 1154
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1157
    new-instance v1, Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$LedSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    .line 1159
    new-instance v1, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    .line 1162
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    if-eqz v1, :cond_184

    .line 1163
    new-instance v1, Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

    .line 1168
    :cond_184
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    if-eqz v1, :cond_18f

    .line 1169
    new-instance v1, Lcom/android/server/BatteryService$PassThroughSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$PassThroughSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsObserver:Lcom/android/server/BatteryService$PassThroughSettingsObserver;

    .line 1174
    :cond_18f
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    if-eqz v12, :cond_1a5

    .line 1175
    new-instance v1, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    .line 1177
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    if-eqz v1, :cond_1a5

    .line 1178
    new-instance v1, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    .line 1185
    :cond_1a5
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    if-eqz v1, :cond_1b0

    .line 1186
    new-instance v1, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    .line 1191
    :cond_1b0
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    if-eqz v1, :cond_1bb

    .line 1192
    new-instance v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    .line 1197
    :cond_1bb
    sget-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v13, :cond_1c6

    .line 1198
    new-instance v1, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    .line 1202
    :cond_1c6
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 1203
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 1204
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 1205
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 1207
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->initBatteryInfo()V

    .line 1211
    iget-object v2, v0, Lcom/android/server/BatteryService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1213
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    .line 1214
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1215
    iget-object v2, v0, Lcom/android/server/BatteryService;->mRequestOtgChargeBlockReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sec.permission.OTG_CHARGE_BLOCK"

    const/4 v14, 0x0

    invoke-virtual {v7, v2, v1, v3, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1219
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.intent.action.BATT_SLATE_MODE_CHANGE"

    .line 1220
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1221
    iget-object v2, v0, Lcom/android/server/BatteryService;->mBattSlateModeControlReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const-string v5, "com.sec.permission.OTG_CHARGE_BLOCK"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1225
    sget-boolean v1, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v1, :cond_227

    .line 1226
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    .line 1227
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    .line 1228
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1229
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHiccupControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_227
    if-eqz v13, :cond_23f

    .line 1235
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    .line 1236
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1237
    iget-object v2, v0, Lcom/android/server/BatteryService;->mWirelessPowerSharingReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const-string v5, "com.samsung.android.permission.wirelesspowersharing"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_23f
    if-eqz v12, :cond_264

    .line 1251
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    .line 1252
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1253
    iget-object v2, v0, Lcom/android/server/BatteryService;->mAudioModeChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v1, "phone"

    .line 1254
    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->startCallThread()V

    .line 1260
    :cond_264
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

    if-eqz v1, :cond_27e

    .line 1261
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL"

    .line 1262
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1263
    iget-object v2, v0, Lcom/android/server/BatteryService;->mFastWirelessAutoModeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const-string v5, "com.samsung.android.permission.FAST_WIRELESS_CHARGING_CONTROL"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1269
    :cond_27e
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_295

    .line 1270
    new-instance v1, Lcom/android/server/BatteryService$10;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;)V

    const-string v2, "DEVPATH=/devices/virtual/switch/invalid_charger"

    .line 1281
    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 1286
    :cond_295
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2a5

    const-string v2, "att.devicehealth.support"

    .line 1287
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a5

    .line 1288
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 1293
    :cond_2a5
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v1, :cond_2d2

    .line 1294
    sget-object v1, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    aget-object v2, v1, v8

    invoke-static {v2}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b6

    .line 1295
    aget-object v1, v1, v8

    goto :goto_2b8

    :cond_2b6
    aget-object v1, v1, v9

    :goto_2b8
    iput-object v1, v0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    .line 1296
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ mAfcDisableSysFs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d2
    const-string/jumbo v1, "ro.boot.cm.param.offset"

    .line 1301
    invoke-static {v1, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    if-eq v1, v10, :cond_2df

    add-int/2addr v1, v9

    goto :goto_2e0

    :cond_2df
    move v1, v10

    .line 1302
    :goto_2e0
    iput v1, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    const-string/jumbo v1, "ro.boot.pd.param.offset"

    .line 1303
    invoke-static {v1, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    const-string/jumbo v1, "ro.boot.wc.param.offset"

    .line 1305
    invoke-static {v1, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    const-string v2, "/sys/class/power_supply/battery/wc_param_info"

    .line 1306
    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eq v1, v10, :cond_305

    if-eqz v2, :cond_305

    .line 1308
    new-instance v1, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    .line 1314
    :cond_305
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_SET"

    .line 1315
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1316
    new-instance v2, Lcom/android/server/BatteryService$TimeChangedReceiver;

    invoke-direct {v2, p0, v14}, Lcom/android/server/BatteryService$TimeChangedReceiver;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$TimeChangedReceiver-IA;)V

    invoke-virtual {v7, v2, v1, v14, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1318
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 1319
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    .line 1320
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1321
    new-instance v2, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;

    invoke-direct {v2, p0, v14}, Lcom/android/server/BatteryService$SetupWizardCompleteReceiver;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$SetupWizardCompleteReceiver-IA;)V

    invoke-virtual {v7, v2, v1, v14, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1325
    invoke-static {}, Landroid/sysprop/PowerProperties;->battery_input_suspended()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "Battery service (battery) commands:"

    .line 3673
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 3674
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 3675
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get [-f] [ac|usb|wireless|status|level|temp|present|counter|invalid]"

    .line 3676
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set [-f] [ac|usb|wireless|status|level|temp|present|counter|invalid] <value>"

    .line 3677
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force a battery property value, freezing battery state."

    .line 3679
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    .line 3680
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  unplug [-f]"

    .line 3681
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Force battery unplugged, freezing battery state."

    .line 3682
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3683
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  reset [-f]"

    .line 3684
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Unfreeze battery state, returning to current hardware values."

    .line 3685
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3686
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3687
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_4b

    const-string v0, "  suspend_input"

    .line 3688
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Suspend charging even if plugged in. "

    .line 3689
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .registers 5

    .line 3251
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileWriteInt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3254
    :try_start_1f
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_29} :catch_47
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_3b

    .line 3258
    :try_start_29
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 3259
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_37} :catch_38

    goto :goto_47

    :catch_38
    move-exception p0

    move-object v0, v1

    goto :goto_3c

    :catch_3b
    move-exception p0

    .line 3261
    :goto_3c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 3263
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p0

    .line 3265
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_47
    :goto_47
    return-void
.end method

.method public static isFileSupported(Ljava/lang/String;)Z
    .registers 3

    .line 3323
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3324
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 3325
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method public static isSupportedDailyBoard()Z
    .registers 6

    .line 3282
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DAILYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    const-string v2, ","

    .line 3287
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    return v1

    .line 3293
    :cond_17
    array-length v2, v0

    move v3, v1

    :goto_19
    if-ge v3, v2, :cond_2a

    aget-object v4, v0, v3

    const-string v5, "TA"

    .line 3294
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v0, 0x1

    return v0

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2a
    return v1
.end method

.method private synthetic lambda$resetBattery$4(ZLjava/io/PrintWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3898
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V
    .registers 2

    const/4 v0, -0x1

    .line 2729
    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$setBatteryLevel$2(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3871
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method private synthetic lambda$setChargerAcOnline$1(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3858
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method private synthetic lambda$unplugBattery$3(ZLjava/io/PrintWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3886
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I
    .registers 4

    .line 2088
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2090
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    return v2

    .line 2100
    :cond_8
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v1, :cond_e

    const/4 p0, 0x4

    return p0

    .line 2102
    :cond_e
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v1, :cond_14

    const/4 p0, 0x2

    return p0

    .line 2107
    :cond_14
    iget-boolean p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz p0, :cond_19

    return v2

    .line 2111
    :cond_19
    iget-boolean p0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p0, :cond_20

    const/16 p0, 0x8

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 6

    .line 3272
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBroadcastToExplicitPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 3275
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3276
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .registers 3

    const-wide/32 v0, 0x80000

    .line 4051
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .registers 2

    const-wide/32 v0, 0x80000

    .line 4055
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public final checkLongLifeBattery()V
    .registers 6

    const-string v0, "/efs/FactoryApp/batt_after_manufactured"

    .line 1526
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "/sys/class/power_supply/battery/batt_after_manufactured"

    if-nez v1, :cond_14

    const/4 v1, 0x0

    .line 1528
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1529
    invoke-static {v2, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1530
    iput v1, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    goto :goto_64

    .line 1532
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 1534
    :try_start_1a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_64

    .line 1535
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[LLB] Write weeklyDiff EFS ->  Sys : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1537
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_43} :catch_44

    goto :goto_64

    :catch_44
    move-exception p0

    .line 1540
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@[LLB] can not change. value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", e: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1545
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$14;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$14;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final checkLongLifeBatteryInternal()I
    .registers 9

    const-string/jumbo v0, "ril.rfcal_date"

    .line 1574
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ril.manufacturedate"

    .line 1575
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string v1, "."

    const-string v2, ""

    .line 1578
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 1580
    :cond_1c
    iget-object v0, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x4

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_57

    .line 1581
    iget-object v0, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1582
    iget-object v1, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1583
    iget-object v6, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1584
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[LLB] rfcal_date "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 1585
    :cond_57
    iget-object v0, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    if-eqz v0, :cond_109

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_109

    .line 1586
    iget-object v0, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1587
    iget-object v1, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1588
    iget-object v6, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1589
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@[LLB] manufacture_date "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :goto_8b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 1596
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1597
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v4, v6, v1, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 1599
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a9

    return v3

    .line 1601
    :cond_a9
    iget-object v0, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 1603
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v5

    .line 1604
    iget-object v4, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    if-nez v0, :cond_e5

    sub-int/2addr v3, v2

    if-lez v3, :cond_dd

    .line 1609
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[LLB] same year diff_Week= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6

    .line 1611
    :cond_dd
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@[LLB] same year but error month!!!"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_e5
    if-gez v0, :cond_ef

    .line 1615
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@[LLB] error year"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_ef
    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x34

    rsub-int/lit8 v2, v2, 0x34

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    :goto_f6
    const-string v0, "/efs/FactoryApp/batt_after_manufactured"

    .line 1622
    invoke-virtual {p0, v0, v3}, Lcom/android/server/BatteryService;->checkWeeklyDiffIsValid(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_108

    const-string v2, "/sys/class/power_supply/battery/batt_after_manufactured"

    .line 1623
    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1624
    invoke-static {v0, v3}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1625
    iput v3, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    :cond_108
    return v1

    .line 1591
    :cond_109
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@[LLB] mRfCalDate is null!!! manufacture_date is also null!!!  we can not check weekly diff"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final checkWeeklyDiffIsValid(Ljava/lang/String;I)Z
    .registers 8

    const-string v0, "!@[LLB] "

    const/4 v1, 0x0

    if-nez p1, :cond_1f

    .line 1632
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " path string is nul"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1636
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, -0x1

    if-nez p0, :cond_41

    .line 1639
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null, It looks first time, just make it."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    goto :goto_87

    .line 1643
    :cond_41
    :try_start_41
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1644
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[LLB] EFS values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Diff_week: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_63} :catch_64

    goto :goto_87

    .line 1646
    :catch_64
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[LLB] !@[BatteryInfo] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : data is \""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_87
    if-ge v2, p2, :cond_8a

    const/4 v1, 0x1

    :cond_8a
    return v1
.end method

.method public final dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    .line 3923
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_2b

    .line 3924
    :try_start_6
    array-length v2, p3

    if-eqz v2, :cond_2b

    const-string v2, "-a"

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_2b

    .line 3989
    :cond_14
    new-instance v3, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 3990
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v6, p1

    move-object v8, p3

    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_3ae

    :cond_2b
    :goto_2b
    const-string p1, "Current Battery Service state:"

    .line 3925
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3926
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz p1, :cond_39

    const-string p1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    .line 3927
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3929
    :cond_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  AC powered: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  USB powered: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3931
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Wireless powered: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3932
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging current: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3933
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging voltage: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Charge counter: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3935
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  status: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  health: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3937
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  present: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3938
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  level: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  scale: 100"

    .line 3939
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3940
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  voltage: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3941
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  temperature: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3942
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  technology: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3945
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  batteryMiscEvent: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3946
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  batteryCurrentEvent: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3947
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSecPlugTypeSummary: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3948
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  LED Charging: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3949
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  LED Low Battery: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3950
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget p1, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_208

    .line 3951
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  current now: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3953
    :cond_208
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    if-eq p1, v2, :cond_226

    .line 3954
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  charge counter: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3957
    :cond_226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Adaptive Fast Charging Settings: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3958
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Super Fast Charging Settings: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3961
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FEATURE_WIRELESS_FAST_CHARGER_CONTROL: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3962
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWasUsedWirelessFastChargerPreviously: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWirelessFastChargingSettingsEnable: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LLB CAL: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LLB MAN: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3969
    iget-object p1, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    if-eqz p1, :cond_314

    .line 3970
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LLB CURRENT: YEAR"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "M"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    .line 3971
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "D"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    .line 3972
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3970
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3973
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LLB DIFF: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3976
    :cond_314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSavedBatteryBeginningDate: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mSavedBatteryBeginningDate:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3979
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEC_FEATURE_BATTERY_FULL_CAPACITY: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFullCapacityEnable: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3983
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FEATURE_HICCUP_CONTROL: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FEATURE_SUPPORTED_DAILY_BOARD: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3985
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEC_FEATURE_BATTERY_LIFE_EXTENDER: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3986
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEC_FEATURE_USE_WIRELESS_POWER_SHARING: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3992
    :goto_3ae
    monitor-exit v0
    :try_end_3af
    .catchall {:try_start_6 .. :try_end_3af} :catchall_44f

    .line 3995
    iget-object p1, p0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p3, :cond_3c1

    .line 3996
    :try_start_3b4
    array-length v0, p3

    if-eqz v0, :cond_3c1

    const-string v0, "-a"

    aget-object p3, p3, v1

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_44a

    :cond_3c1
    const-string p3, "BatteryInfoBackUp"

    .line 3997
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3998
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSavedBatteryAsoc: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3999
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSavedBatteryMaxTemp: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4000
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSavedBatteryMaxCurrent: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4001
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSavedBatteryUsage: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/BatteryService;->mSavedBatteryUsage:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4002
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  FEATURE_SAVE_BATTERY_CYCLE: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/android/server/BatteryService;->FEATURE_SAVE_BATTERY_CYCLE:Z

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4005
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  SEC_FEATURE_PREVENT_SWELLING: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4008
    :cond_44a
    monitor-exit p1

    return-void

    :catchall_44c
    move-exception p0

    monitor-exit p1
    :try_end_44e
    .catchall {:try_start_3b4 .. :try_end_44e} :catchall_44c

    throw p0

    :catchall_44f
    move-exception p0

    .line 3992
    :try_start_450
    monitor-exit v0
    :try_end_451
    .catchall {:try_start_450 .. :try_end_451} :catchall_44f

    throw p0
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .registers 6

    .line 4013
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4015
    iget-object p1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const-wide v1, 0x10800000001L

    .line 4016
    :try_start_d
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v1, 0x0

    .line 4018
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v2, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_1b

    const/4 v1, 0x1

    goto :goto_2d

    .line 4020
    :cond_1b
    iget-boolean v3, v2, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_21

    const/4 v1, 0x2

    goto :goto_2d

    .line 4022
    :cond_21
    iget-boolean v3, v2, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_27

    const/4 v1, 0x4

    goto :goto_2d

    .line 4024
    :cond_27
    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz v2, :cond_2d

    const/16 v1, 0x8

    :cond_2d
    :goto_2d
    const-wide v2, 0x10e00000002L

    .line 4027
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000003L

    .line 4028
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000004L

    .line 4031
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000005L

    .line 4034
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10e00000006L

    .line 4036
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10e00000007L

    .line 4037
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10800000008L

    .line 4038
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10500000009L

    .line 4039
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000aL

    const/16 v3, 0x64

    .line 4040
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000bL

    .line 4041
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000cL

    .line 4042
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1090000000dL

    .line 4045
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object p0, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4046
    monitor-exit p1
    :try_end_b8
    .catchall {:try_start_d .. :try_end_b8} :catchall_bc

    .line 4047
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_bc
    move-exception p0

    .line 4046
    :try_start_bd
    monitor-exit p1
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw p0
.end method

.method public final fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 3187
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v0, "fileWriteString : file not found"

    const/4 v1, 0x0

    if-nez p0, :cond_14

    .line 3188
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3192
    :cond_14
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileWriteString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 3196
    :try_start_33
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3d} :catch_4f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3d} :catch_4b

    .line 3202
    :try_start_3d
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 3203
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_47} :catch_49

    const/4 p0, 0x1

    return p0

    :catch_49
    move-exception p0

    goto :goto_55

    :catch_4b
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_55

    .line 3198
    :catch_4f
    :try_start_4f
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_54} :catch_4b

    return v1

    .line 3206
    :goto_55
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 3208
    :try_start_58
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p0

    .line 3210
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_60
    return v1
.end method

.method public final getCurrentCalender()Ljava/lang/String;
    .registers 7

    .line 1443
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x1

    .line 1444
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 1445
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x5

    .line 1446
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1447
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    const-string p0, "%04d%02d%02d"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceSecurityPackageName()Ljava/lang/String;
    .registers 4

    .line 3306
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SECURITY_CONFIG_DEVICEMONITOR_PACKAGE_NAME"

    const-string v2, "com.samsung.android.sm.devicesecurity"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3308
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    .line 3310
    :try_start_14
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIconLocked(I)I
    .registers 5

    .line 3041
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const v0, 0x1080a94

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    return v0

    :cond_b
    const/4 v1, 0x3

    const v2, 0x1080a86

    if-ne p1, v1, :cond_12

    return v2

    :cond_12
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1d

    const/4 v1, 0x5

    if-ne p1, v1, :cond_19

    goto :goto_1d

    :cond_19
    const p0, 0x1080aa2

    return p0

    :cond_1d
    :goto_1d
    const/16 p1, 0xf

    .line 3047
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/16 p1, 0x64

    if-lt p0, p1, :cond_2e

    return v0

    :cond_2e
    return v2
.end method

.method public final initBatteryInfo()V
    .registers 3

    .line 3333
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$29;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$29;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final initializeSavedAsoc(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_9

    const-wide/16 p1, -0x1

    goto :goto_b

    :cond_9
    const-wide/16 p1, 0x64

    .line 3458
    :goto_b
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@initializeSavedAsoc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/efs/FactoryApp/asoc"

    .line 3459
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    return-wide p1
.end method

.method public final isPoweredLocked(I)Z
    .registers 6

    .line 1803
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    return v2

    :cond_8
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_11

    .line 1806
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_11

    return v2

    :cond_11
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1a

    .line 1810
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_1a

    return v2

    :cond_1a
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_23

    .line 1814
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_23

    return v2

    :cond_23
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2c

    .line 1818
    iget-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p1, :cond_2c

    return v2

    :cond_2c
    if-eqz v1, :cond_35

    .line 1824
    iget-object p0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz p0, :cond_35

    return v2

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedWirelessTx()Z
    .registers 1

    .line 3146
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 3148
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final logBatteryStatsLocked()V
    .registers 9

    const-string v0, "failed to close dumpsys output stream"

    const-string v1, "failed to delete temporary dumpsys file: "

    const-string v2, "batterystats"

    .line 2963
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_d

    return-void

    .line 2966
    :cond_d
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v3, "dropbox"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    if-eqz p0, :cond_ee

    const-string v3, "BATTERY_DISCHARGE_INFO"

    .line 2967
    invoke-virtual {p0, v3}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    goto/16 :goto_ee

    :cond_23
    const/4 v4, 0x0

    .line 2973
    :try_start_24
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/batterystats.dump"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_8c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_68
    .catchall {:try_start_24 .. :try_end_2b} :catchall_65

    .line 2974
    :try_start_2b
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_63
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_61
    .catchall {:try_start_2b .. :try_end_30} :catchall_c1

    .line 2975
    :try_start_30
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    sget-object v7, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v2, v4, v7}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 2976
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    const/4 v2, 0x2

    .line 2979
    invoke-virtual {p0, v3, v5, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_40} :catch_5e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_40} :catch_5b
    .catchall {:try_start_30 .. :try_end_40} :catchall_57

    .line 2988
    :try_start_40
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_49

    .line 2990
    :catch_44
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    :goto_49
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_c0

    .line 2994
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_af

    :catchall_57
    move-exception p0

    move-object v4, v6

    goto/16 :goto_c2

    :catch_5b
    move-exception p0

    move-object v4, v6

    goto :goto_6a

    :catch_5e
    move-exception p0

    move-object v4, v6

    goto :goto_8e

    :catch_61
    move-exception p0

    goto :goto_6a

    :catch_63
    move-exception p0

    goto :goto_8e

    :catchall_65
    move-exception p0

    move-object v5, v4

    goto :goto_c2

    :catch_68
    move-exception p0

    move-object v5, v4

    .line 2983
    :goto_6a
    :try_start_6a
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "failed to write dumpsys file"

    invoke-static {v2, v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_c1

    if-eqz v4, :cond_7c

    .line 2988
    :try_start_73
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7c

    .line 2990
    :catch_77
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    :goto_7c
    if-eqz v5, :cond_c0

    .line 2993
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_c0

    .line 2994
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_af

    :catch_8c
    move-exception p0

    move-object v5, v4

    .line 2981
    :goto_8e
    :try_start_8e
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "failed to dump battery service"

    invoke-static {v2, v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_c1

    if-eqz v4, :cond_a0

    .line 2988
    :try_start_97
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_a0

    .line 2990
    :catch_9b
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    :goto_a0
    if-eqz v5, :cond_c0

    .line 2993
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_c0

    .line 2994
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_af
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2995
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2994
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    return-void

    :catchall_c1
    move-exception p0

    :goto_c2
    if-eqz v4, :cond_cd

    .line 2988
    :try_start_c4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_cd

    .line 2990
    :catch_c8
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    :goto_cd
    if-eqz v5, :cond_ed

    .line 2993
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_ed

    .line 2994
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2995
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2994
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    :cond_ed
    throw p0

    :cond_ee
    :goto_ee
    return-void
.end method

.method public final logOutlierLocked(J)V
    .registers 8

    .line 3001
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3012
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    const-string v1, "battery_discharge_threshold"

    .line 3013
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "battery_discharge_duration_threshold"

    .line 3015
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_18
    move-object v0, v2

    :goto_19
    if-eqz v2, :cond_54

    if-eqz v0, :cond_54

    .line 3022
    :try_start_1d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3023
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    cmp-long p1, p1, v3

    if-gtz p1, :cond_54

    .line 3024
    iget p1, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object p2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p2, p2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    sub-int/2addr p1, p2

    if-lt p1, v1, :cond_54

    .line 3027
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_35} :catch_36

    goto :goto_54

    .line 3034
    :catch_36
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid DischargeThresholds GService string: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return-void
.end method

.method public onBootPhase(I)V
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x226

    if-ne p1, v3, :cond_2f

    .line 1347
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1349
    :try_start_a
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 1351
    new-instance p1, Lcom/android/server/BatteryService$11;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v2}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 1359
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "low_power_trigger_level"

    .line 1360
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v1, p1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 1364
    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService;->registerContentObserver(Landroid/content/ContentResolver;)V

    .line 1365
    monitor-exit v3

    goto/16 :goto_dc

    :catchall_2c
    move-exception p0

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2c

    throw p0

    :cond_2f
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_dc

    .line 1370
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1371
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$12;

    invoke-direct {v4, p0}, Lcom/android/server/BatteryService$12;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1384
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1385
    :try_start_46
    invoke-virtual {p0, v2}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    .line 1386
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_d9

    .line 1389
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    if-eqz v3, :cond_6c

    const-string/jumbo v3, "persist.sys.shutdown_received"

    .line 1390
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "persist.sys.shutdown_received"

    const-string v5, "false"

    .line 1391
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_6c

    .line 1394
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$13;

    invoke-direct {v4, p0}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;)V

    const-wide/32 v5, 0xc350

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1412
    :cond_6c
    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v3, :cond_8c

    .line 1413
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    if-eqz v3, :cond_8c

    iget v3, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_7e

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_8c

    .line 1416
    :cond_7e
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "bootCompleted and HiccupPopup"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "/sys/class/power_supply/battery/batt_misc_event"

    .line 1417
    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    invoke-static {v3, v4}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 1423
    :cond_8c
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v3, :cond_96

    .line 1424
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->isSupportedWirelessTx()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    .line 1429
    :cond_96
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    if-eqz v3, :cond_dc

    const-string/jumbo v3, "protect_battery"

    const/4 v4, -0x2

    .line 1430
    invoke-static {p1, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_a5

    goto :goto_a6

    :cond_a5
    move v2, v1

    :goto_a6
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 1431
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@mLifeExtender Settings = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mLifeExtenderSettingsObserver register"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "protect_battery"

    .line 1432
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$LifeExtenderSettingsObserver;

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1433
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_dc

    :catchall_d9
    move-exception p0

    .line 1386
    :try_start_da
    monitor-exit v3
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw p0

    :cond_dc
    :goto_dc
    return-void
.end method

.method public onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_b

    .line 3708
    invoke-virtual/range {p1 .. p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3710
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 3711
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2aa

    :goto_16
    const/4 v3, -0x1

    goto :goto_52

    :sswitch_18
    const-string/jumbo v3, "reset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_16

    :cond_22
    const/4 v3, 0x4

    goto :goto_52

    :sswitch_24
    const-string/jumbo v3, "set"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_16

    :cond_2e
    const/4 v3, 0x3

    goto :goto_52

    :sswitch_30
    const-string v3, "get"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_16

    :cond_39
    const/4 v3, 0x2

    goto :goto_52

    :sswitch_3b
    const-string/jumbo v3, "suspend_input"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto :goto_16

    :cond_45
    const/4 v3, 0x1

    goto :goto_52

    :sswitch_47
    const-string/jumbo v3, "unplug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_16

    :cond_51
    const/4 v3, 0x0

    :goto_52
    const-string v10, "No property specified"

    const-string/jumbo v12, "invalid"

    const-string v14, "counter"

    const-string/jumbo v4, "level"

    const/16 v16, 0x5

    const-string/jumbo v5, "temp"

    const-string/jumbo v6, "usb"

    const-string v11, "ac"

    const-string/jumbo v13, "present"

    const-string/jumbo v15, "status"

    const-string/jumbo v8, "wireless"

    const/4 v7, 0x0

    const-string v9, "android.permission.DEVICE_POWER"

    packed-switch v3, :pswitch_data_2c0

    .line 3843
    invoke-virtual/range {p1 .. p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3832
    :pswitch_7a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 3833
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_8b

    const/4 v9, 0x1

    goto :goto_8c

    :cond_8b
    const/4 v9, 0x0

    .line 3835
    :goto_8c
    invoke-virtual {v0, v9, v2}, Lcom/android/server/BatteryService;->resetBattery(ZLjava/io/PrintWriter;)V

    goto/16 :goto_291

    .line 3759
    :pswitch_91
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 3760
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3762
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a7

    .line 3764
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, -0x1

    return v7

    :cond_a7
    const/4 v7, -0x1

    .line 3768
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b4

    const-string v0, "No value specified"

    .line 3770
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 3775
    :cond_b4
    :try_start_b4
    iget-boolean v7, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v7, :cond_bf

    .line 3779
    iget-object v7, v0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v10, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v7, v10}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 3783
    :cond_bf
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2ce

    goto :goto_111

    :sswitch_c7
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    const/16 v4, 0x8

    goto :goto_112

    :sswitch_d0
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    const/4 v4, 0x6

    goto :goto_112

    :sswitch_d8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    move/from16 v4, v16

    goto :goto_112

    :sswitch_e1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    const/4 v4, 0x7

    goto :goto_112

    :sswitch_e9
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    const/4 v4, 0x2

    goto :goto_112

    :sswitch_f1
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    const/4 v4, 0x1

    goto :goto_112

    :sswitch_f9
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    const/4 v4, 0x0

    goto :goto_112

    :sswitch_101
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    const/4 v4, 0x4

    goto :goto_112

    :sswitch_109
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    const/4 v4, 0x3

    goto :goto_112

    :cond_111
    :goto_111
    const/4 v4, -0x1

    :goto_112
    packed-switch v4, :pswitch_data_2f4

    .line 3812
    new-instance v4, Ljava/lang/StringBuilder;

    goto/16 :goto_17d

    .line 3809
    :pswitch_119
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto :goto_17b

    .line 3806
    :pswitch_120
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    goto :goto_17b

    .line 3803
    :pswitch_129
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    goto :goto_17b

    .line 3800
    :pswitch_132
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    goto :goto_17b

    .line 3797
    :pswitch_13b
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    goto :goto_17b

    .line 3794
    :pswitch_144
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_14e

    const/4 v4, 0x1

    goto :goto_14f

    :cond_14e
    const/4 v4, 0x0

    :goto_14f
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    goto :goto_17b

    .line 3791
    :pswitch_152
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_15c

    const/4 v4, 0x1

    goto :goto_15d

    :cond_15c
    const/4 v4, 0x0

    :goto_15d
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    goto :goto_17b

    .line 3788
    :pswitch_160
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_16a

    const/4 v4, 0x1

    goto :goto_16b

    :cond_16a
    const/4 v4, 0x0

    :goto_16b
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    goto :goto_17b

    .line 3785
    :pswitch_16e
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_178

    const/4 v4, 0x1

    goto :goto_179

    :cond_178
    const/4 v4, 0x0

    :goto_179
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    :goto_17b
    const/4 v3, 0x1

    goto :goto_190

    .line 3812
    :goto_17d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown set option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_190
    if-eqz v3, :cond_291

    .line 3817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_196
    .catch Ljava/lang/NumberFormatException; {:try_start_b4 .. :try_end_196} :catch_1ac

    const/4 v5, 0x1

    .line 3819
    :try_start_197
    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    and-int/2addr v1, v5

    if-eqz v1, :cond_19e

    const/4 v1, 0x1

    goto :goto_19f

    :cond_19e
    const/4 v1, 0x0

    .line 3820
    :goto_19f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V
    :try_end_1a2
    .catchall {:try_start_197 .. :try_end_1a2} :catchall_1a7

    .line 3823
    :try_start_1a2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_291

    :catchall_1a7
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3824
    throw v0
    :try_end_1ac
    .catch Ljava/lang/NumberFormatException; {:try_start_1a2 .. :try_end_1ac} :catch_1ac

    .line 3827
    :catch_1ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :pswitch_1c2
    const/4 v1, -0x1

    .line 3719
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1cd

    .line 3721
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 3725
    :cond_1cd
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_30a

    :goto_1d4
    move v4, v1

    goto/16 :goto_229

    :sswitch_1d7
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1de

    goto :goto_1d4

    :cond_1de
    const/16 v4, 0x8

    goto :goto_229

    :sswitch_1e1
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e8

    goto :goto_1d4

    :cond_1e8
    const/4 v4, 0x7

    goto :goto_229

    :sswitch_1ea
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f1

    goto :goto_1d4

    :cond_1f1
    const/4 v4, 0x6

    goto :goto_229

    :sswitch_1f3
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1fa

    goto :goto_1d4

    :cond_1fa
    move/from16 v4, v16

    goto :goto_229

    :sswitch_1fd
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_204

    goto :goto_1d4

    :cond_204
    const/4 v4, 0x4

    goto :goto_229

    :sswitch_206
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20d

    goto :goto_1d4

    :cond_20d
    const/4 v4, 0x3

    goto :goto_229

    :sswitch_20f
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_216

    goto :goto_1d4

    :cond_216
    const/4 v4, 0x2

    goto :goto_229

    :sswitch_218
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21f

    goto :goto_1d4

    :cond_21f
    const/4 v4, 0x1

    goto :goto_229

    :sswitch_221
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_228

    goto :goto_1d4

    :cond_228
    const/4 v4, 0x0

    :goto_229
    packed-switch v4, :pswitch_data_330

    .line 3754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown get option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_291

    .line 3751
    :pswitch_241
    iget v0, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_291

    .line 3745
    :pswitch_247
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_291

    .line 3742
    :pswitch_24f
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_291

    .line 3748
    :pswitch_257
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_291

    .line 3733
    :pswitch_25f
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 3730
    :pswitch_267
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 3727
    :pswitch_26f
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 3739
    :pswitch_277
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_291

    .line 3736
    :pswitch_27f
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 3838
    :pswitch_287
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v9, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3840
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->suspendBatteryInput()V

    :cond_291
    :goto_291
    const/4 v0, 0x0

    goto :goto_2a9

    .line 3713
    :pswitch_293
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 3714
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_2a4

    move v9, v3

    goto :goto_2a5

    :cond_2a4
    const/4 v9, 0x0

    .line 3716
    :goto_2a5
    invoke-virtual {v0, v9, v2}, Lcom/android/server/BatteryService;->unplugBattery(ZLjava/io/PrintWriter;)V

    goto :goto_291

    :goto_2a9
    return v0

    :sswitch_data_2aa
    .sparse-switch
        -0x32165859 -> :sswitch_47
        -0x204dc1f9 -> :sswitch_3b
        0x18f56 -> :sswitch_30
        0x1bc62 -> :sswitch_24
        0x6761d4f -> :sswitch_18
    .end sparse-switch

    :pswitch_data_2c0
    .packed-switch 0x0
        :pswitch_293
        :pswitch_287
        :pswitch_1c2
        :pswitch_91
        :pswitch_7a
    .end packed-switch

    :sswitch_data_2ce
    .sparse-switch
        -0x3b9b7862 -> :sswitch_109
        -0x3532300e -> :sswitch_101
        -0x12f88745 -> :sswitch_f9
        0xc22 -> :sswitch_f1
        0x1c584 -> :sswitch_e9
        0x3643d4 -> :sswitch_e1
        0x6219b84 -> :sswitch_d8
        0x391755fc -> :sswitch_d0
        0x74cff1f7 -> :sswitch_c7
    .end sparse-switch

    :pswitch_data_2f4
    .packed-switch 0x0
        :pswitch_16e
        :pswitch_160
        :pswitch_152
        :pswitch_144
        :pswitch_13b
        :pswitch_132
        :pswitch_129
        :pswitch_120
        :pswitch_119
    .end packed-switch

    :sswitch_data_30a
    .sparse-switch
        -0x3b9b7862 -> :sswitch_221
        -0x3532300e -> :sswitch_218
        -0x12f88745 -> :sswitch_20f
        0xc22 -> :sswitch_206
        0x1c584 -> :sswitch_1fd
        0x3643d4 -> :sswitch_1f3
        0x6219b84 -> :sswitch_1ea
        0x391755fc -> :sswitch_1e1
        0x74cff1f7 -> :sswitch_1d7
    .end sparse-switch

    :pswitch_data_330
    .packed-switch 0x0
        :pswitch_27f
        :pswitch_277
        :pswitch_26f
        :pswitch_267
        :pswitch_25f
        :pswitch_257
        :pswitch_24f
        :pswitch_247
        :pswitch_241
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 1332
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BinderService-IA;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const-string v2, "battery"

    .line 1333
    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1334
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BatteryPropertiesRegistrar-IA;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    const-string v2, "batteryproperties"

    .line 1335
    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1336
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$LocalService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1339
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->checkLongLifeBattery()V

    return-void
.end method

.method public parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .registers 4

    const/4 p0, 0x0

    .line 3698
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "-f"

    .line 3699
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_12
    return p0
.end method

.method public final processValuesLocked(Z)V
    .registers 23

    move-object/from16 v0, p0

    .line 2122
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_12

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v2, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v1, v2, :cond_12

    move v1, v4

    goto :goto_13

    :cond_12
    move v1, v3

    :goto_13
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 2128
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v1}, Lcom/android/server/BatteryService;->plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I

    move-result v8

    iput v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-nez v8, :cond_2b

    .line 2132
    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    if-eqz v5, :cond_28

    goto :goto_2b

    .line 2155
    :cond_28
    iput v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    goto :goto_5f

    .line 2136
    :cond_2b
    :goto_2b
    iput v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2137
    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v6, v5, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v6, :cond_37

    const/4 v6, 0x0

    or-int/2addr v6, v4

    .line 2138
    iput v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2140
    :cond_37
    iget-boolean v6, v5, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v6, :cond_40

    .line 2141
    iget v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v6, v2

    iput v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2143
    :cond_40
    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v5, :cond_49

    .line 2144
    iget v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v5, v1

    iput v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2147
    :cond_49
    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    if-eqz v6, :cond_56

    .line 2148
    iget v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    iput v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2151
    :cond_56
    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v5, :cond_5f

    .line 2152
    iget v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v5, v4

    iput v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2172
    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v7, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v9, v6, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v10, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v11, v6, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v12, v6, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v13, v6, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iget v14, v6, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iget-wide v3, v6, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v15, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v1, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iget v2, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iget v0, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iget-boolean v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    move/from16 v20, v6

    move v6, v7

    move v7, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v16, v15

    move-wide v14, v3

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v0

    invoke-interface/range {v5 .. v20}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIJIIIIZ)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_94} :catch_94

    .line 2191
    :catch_94
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 2197
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    const-wide/16 v1, 0x0

    move-object/from16 v3, p0

    if-eqz v0, :cond_c0

    .line 2199
    iget-wide v4, v3, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_c0

    iget-object v4, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v4, :cond_c0

    .line 2200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x2932e00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_c0

    .line 2202
    iget-object v4, v3, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v5, v3, Lcom/android/server/BatteryService;->mUpdateBatteryUsageOnDockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c0
    if-nez p1, :cond_158

    .line 2208
    iget-object v4, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v6, v3, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v5, v6, :cond_158

    iget v5, v4, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v6, v3, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v5, v6, :cond_158

    iget-boolean v5, v4, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v6, v3, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v5, v6, :cond_158

    iget v5, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v6, v3, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v5, v6, :cond_158

    iget v5, v3, Lcom/android/server/BatteryService;->mPlugType:I

    iget v6, v3, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v5, v6, :cond_158

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v5, v3, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-eq v4, v5, :cond_f1

    sub-int/2addr v4, v5

    .line 2215
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x32

    if-gt v4, v5, :cond_158

    :cond_f1
    iget-object v4, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v5, v3, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v4, v5, :cond_102

    sub-int/2addr v4, v5

    .line 2217
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_158

    :cond_102
    iget-object v4, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v4, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iget v6, v3, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    if-ne v5, v6, :cond_158

    iget v5, v4, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iget v6, v3, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    if-ne v5, v6, :cond_158

    iget-object v5, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iget v7, v3, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    if-ne v6, v7, :cond_158

    iget v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iget v7, v3, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    if-ne v6, v7, :cond_158

    iget-boolean v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v7, v3, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    if-ne v6, v7, :cond_158

    iget v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iget v7, v3, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    if-ne v6, v7, :cond_158

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_135

    iget v4, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    iget v6, v3, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    if-ne v4, v6, :cond_158

    :cond_135
    iget-boolean v4, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iget-boolean v6, v3, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-ne v4, v6, :cond_158

    iget v4, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v6, v3, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v4, v6, :cond_158

    iget v4, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iget v5, v3, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    if-ne v4, v5, :cond_158

    iget v4, v3, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v5, v3, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v4, v5, :cond_158

    iget v4, v3, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v5, v3, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-eq v4, v5, :cond_154

    goto :goto_158

    :cond_154
    const/4 v6, 0x1

    const/4 v11, 0x0

    goto/16 :goto_503

    .line 2237
    :cond_158
    :goto_158
    iget v4, v3, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, v3, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v6, 0x3

    const/4 v7, 0x5

    if-eq v4, v5, :cond_225

    const/16 v8, 0x58a

    const/16 v9, 0x58d

    const/16 v10, 0x589

    if-nez v5, :cond_1d1

    .line 2240
    iget-object v4, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v4, v3, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 2241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 2243
    new-instance v4, Landroid/metrics/LogMaker;

    invoke-direct {v4, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v5, 0x4

    .line 2244
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2245
    iget v5, v3, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2246
    iget-object v5, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2247
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2246
    invoke-virtual {v4, v8, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2248
    iget-object v5, v3, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2252
    iget-wide v4, v3, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v4, v4, v1

    if-eqz v4, :cond_225

    iget v4, v3, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v5, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-eq v4, v5, :cond_225

    .line 2253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, v3, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v4, v8

    const/16 v8, 0xaaa

    new-array v9, v6, [Ljava/lang/Object;

    .line 2255
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, v3, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2256
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 2255
    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2258
    iput-wide v1, v3, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const/4 v8, 0x1

    goto :goto_227

    :cond_1d1
    if-nez v4, :cond_225

    .line 2262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 2263
    iget-object v4, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v4, v3, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v11, v3, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v4, v11

    cmp-long v11, v11, v1

    if-eqz v11, :cond_223

    cmp-long v11, v4, v1

    if-eqz v11, :cond_223

    .line 2267
    new-instance v11, Landroid/metrics/LogMaker;

    invoke-direct {v11, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2268
    invoke-virtual {v11, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2269
    iget v10, v3, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v9, 0x58c

    .line 2271
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2270
    invoke-virtual {v11, v9, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2272
    iget v4, v3, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 2273
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2272
    invoke-virtual {v11, v8, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x58b

    .line 2274
    iget-object v5, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2275
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2274
    invoke-virtual {v11, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2276
    iget-object v4, v3, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v11}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2278
    :cond_223
    iput-wide v1, v3, Lcom/android/server/BatteryService;->mChargeStartTime:J

    :cond_225
    move-wide v4, v1

    const/4 v8, 0x0

    .line 2283
    :goto_227
    iget v9, v3, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    if-gtz v9, :cond_233

    iget-object v9, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-lez v9, :cond_233

    .line 2284
    iput v9, v3, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2288
    :cond_233
    iget-object v9, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v9, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v11, v3, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v10, v11, :cond_24d

    iget v11, v9, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v12, v3, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v11, v12, :cond_24d

    iget-boolean v9, v9, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v11, v3, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v9, v11, :cond_24d

    iget v9, v3, Lcom/android/server/BatteryService;->mPlugType:I

    iget v11, v3, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v9, v11, :cond_280

    :cond_24d
    const/16 v9, 0xaa3

    new-array v11, v7, [Ljava/lang/Object;

    .line 2293
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    iget-object v10, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v11, v12

    iget-object v10, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v10, v10, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v11, v12

    iget v10, v3, Lcom/android/server/BatteryService;->mPlugType:I

    .line 2294
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v6

    iget-object v10, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v10, v10, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const/4 v12, 0x4

    aput-object v10, v11, v12

    .line 2292
    invoke-static {v9, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2296
    :cond_280
    iget-object v9, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v3, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    const/16 v11, 0x64

    if-eq v9, v10, :cond_2ea

    const/16 v10, 0xaa2

    new-array v6, v6, [Ljava/lang/Object;

    .line 2301
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v6, v12

    iget-object v9, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 2302
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v6, v12

    iget-object v9, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 2303
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v6, v12

    .line 2299
    invoke-static {v10, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2306
    iget-object v6, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v9, v3, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ge v6, v9, :cond_2d6

    .line 2309
    iget-wide v12, v3, Lcom/android/server/BatteryService;->mCurrentBatteryUsage:J

    sub-int/2addr v9, v6

    int-to-long v9, v9

    add-long/2addr v12, v9

    iput-wide v12, v3, Lcom/android/server/BatteryService;->mCurrentBatteryUsage:J

    const-wide/16 v9, 0xa

    cmp-long v6, v12, v9

    if-ltz v6, :cond_2ca

    .line 2311
    iget-object v6, v3, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v9, v3, Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2314
    :cond_2ca
    iget v6, v3, Lcom/android/server/BatteryService;->mBatteryUsageSinceLastAsocUpdate:I

    iget v9, v3, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v10, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    sub-int/2addr v9, v10

    add-int/2addr v6, v9

    iput v6, v3, Lcom/android/server/BatteryService;->mBatteryUsageSinceLastAsocUpdate:I

    .line 2317
    :cond_2d6
    iget-wide v9, v3, Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J

    cmp-long v6, v9, v1

    if-ltz v6, :cond_2e0

    iget v6, v3, Lcom/android/server/BatteryService;->mBatteryUsageSinceLastAsocUpdate:I

    if-lt v6, v11, :cond_2ea

    .line 2319
    :cond_2e0
    iget-object v6, v3, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v9, v3, Lcom/android/server/BatteryService;->mUpdateBatteryAsocRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v6, 0x0

    .line 2320
    iput v6, v3, Lcom/android/server/BatteryService;->mBatteryUsageSinceLastAsocUpdate:I

    .line 2324
    :cond_2ea
    iget-boolean v6, v3, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v6, :cond_2fe

    iget-boolean v6, v3, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v6, :cond_2fe

    iget v6, v3, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v6, :cond_2fe

    .line 2328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, v3, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v4, v8

    const/4 v8, 0x1

    .line 2332
    :cond_2fe
    iget-boolean v6, v3, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v6, :cond_316

    .line 2334
    iget v6, v3, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v6, :cond_332

    iget-object v6, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_332

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v9, v3, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v6, v9, :cond_332

    .line 2338
    iput-boolean v10, v3, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_332

    .line 2342
    :cond_316
    iget v6, v3, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v6, :cond_31e

    const/4 v6, 0x0

    .line 2343
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_332

    :cond_31e
    const/4 v6, 0x0

    .line 2344
    iget-object v9, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v3, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v9, v10, :cond_32a

    .line 2345
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_332

    :cond_32a
    if-eqz p1, :cond_332

    .line 2346
    iget v10, v3, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v9, v10, :cond_332

    .line 2349
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 2353
    :cond_332
    :goto_332
    iget v6, v3, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v9, 0x1

    add-int/2addr v6, v9

    iput v6, v3, Lcom/android/server/BatteryService;->mSequence:I

    .line 2356
    sget-boolean v6, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    if-eqz v6, :cond_366

    .line 2357
    iget-object v6, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    if-ne v6, v11, :cond_366

    .line 2358
    iget-boolean v6, v3, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    if-nez v6, :cond_366

    .line 2359
    iput-boolean v9, v3, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 2361
    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v10, "enable wireless charger menu in setting"

    invoke-static {v6, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    iget-object v6, v3, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v10, -0x2

    const-string/jumbo v11, "show_wireless_charger_menu"

    invoke-static {v6, v11, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2367
    iget-object v6, v3, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/BatteryService$16;

    invoke-direct {v9, v3}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2386
    :cond_366
    iget v6, v3, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v9, -0x1

    const-string/jumbo v10, "seq"

    const/high16 v11, 0x4000000

    if-eqz v6, :cond_390

    iget v12, v3, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v12, :cond_376

    if-ne v12, v9, :cond_390

    .line 2388
    :cond_376
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2390
    iget v9, v3, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2391
    iget-object v9, v3, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/BatteryService$17;

    invoke-direct {v12, v3, v6}, Lcom/android/server/BatteryService$17;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v9, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3b1

    :cond_390
    if-nez v6, :cond_3b1

    .line 2417
    iget v6, v3, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v6, :cond_398

    if-ne v6, v9, :cond_3b1

    .line 2419
    :cond_398
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2420
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2421
    iget v9, v3, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2422
    iget-object v9, v3, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/BatteryService$18;

    invoke-direct {v12, v3, v6}, Lcom/android/server/BatteryService$18;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v9, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2449
    :cond_3b1
    :goto_3b1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v6

    if-eqz v6, :cond_3d4

    const/4 v6, 0x1

    .line 2450
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 2451
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.BATTERY_LOW"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2452
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2453
    iget v11, v3, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2454
    iget-object v10, v3, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/BatteryService$19;

    invoke-direct {v11, v3, v9}, Lcom/android/server/BatteryService$19;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3fd

    :cond_3d4
    const/4 v6, 0x1

    .line 2460
    iget-boolean v9, v3, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v9, :cond_3fd

    iget-object v9, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v12, v3, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v9, v12, :cond_3fd

    const/4 v9, 0x0

    .line 2462
    iput-boolean v9, v3, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 2463
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2464
    invoke-virtual {v9, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2465
    iget v11, v3, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2466
    iget-object v10, v3, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/BatteryService$20;

    invoke-direct {v11, v3, v9}, Lcom/android/server/BatteryService$20;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3fd
    :goto_3fd
    if-eqz v0, :cond_486

    .line 2477
    iget-object v0, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v9, v3, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v0, v9, :cond_445

    if-ne v0, v7, :cond_445

    iget-object v0, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v0, :cond_445

    .line 2480
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "status : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " laststatus : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " PogoOnline : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v10, v10, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->setFullChargingOnDockStartTime()V

    .line 2483
    iput-wide v1, v3, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    .line 2488
    :cond_445
    iget-object v0, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iget-boolean v9, v3, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-eq v0, v9, :cond_451

    iget v9, v3, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v9, :cond_45d

    :cond_451
    if-eqz v0, :cond_486

    iget-object v0, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v9, v3, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-eq v0, v9, :cond_486

    if-ne v9, v7, :cond_486

    :cond_45d
    const-wide/16 v9, -0x1

    .line 2493
    iput-wide v9, v3, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    .line 2494
    iput-wide v9, v3, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    .line 2495
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reset mFullChargingOnDockStartTime : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " mIncreasingCycleCnt : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lcom/android/server/BatteryService;->mIncreasingCycleCnt:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_486
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 2506
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryEventIntentLocked()V

    .line 2508
    iget v0, v3, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v7, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-ne v0, v7, :cond_49a

    iget v0, v3, Lcom/android/server/BatteryService;->mLastPlugType:I

    iget v7, v3, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v0, v7, :cond_49d

    .line 2509
    :cond_49a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    :cond_49d
    const/4 v11, 0x0

    .line 2512
    invoke-virtual {v3, v11}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    .line 2515
    iget-object v0, v3, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    if-eqz v8, :cond_4af

    cmp-long v0, v4, v1

    if-eqz v0, :cond_4af

    .line 2519
    invoke-virtual {v3, v4, v5}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 2522
    :cond_4af
    iget-object v0, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 2523
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 2524
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iput-boolean v1, v3, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 2525
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 2526
    iget v1, v3, Lcom/android/server/BatteryService;->mPlugType:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 2527
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 2528
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 2529
    iget v1, v0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 2530
    iget v0, v0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iput v0, v3, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 2532
    iget-boolean v0, v3, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, v3, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 2533
    iget v0, v3, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, v3, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 2535
    iget-object v0, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 2536
    iget v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 2537
    iget-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iput-boolean v1, v3, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 2538
    iget v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 2539
    iget v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    .line 2540
    iget-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iput-boolean v1, v3, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 2541
    iget v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iput v1, v3, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 2542
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iput v0, v3, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 2543
    iget v0, v3, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iput v0, v3, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 2548
    :goto_503
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v0, :cond_50a

    .line 2549
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked()V

    .line 2554
    :cond_50a
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v0, :cond_523

    .line 2555
    iget-boolean v0, v3, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v0, :cond_523

    iget-boolean v0, v3, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    if-eqz v0, :cond_523

    iget-object v0, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_523

    const-string v1, "/sys/class/power_supply/battery/batt_misc_event"

    .line 2557
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 2562
    :cond_523
    iget-object v0, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    int-to-long v1, v0

    iget-wide v4, v3, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_538

    int-to-long v0, v0

    .line 2563
    iput-wide v0, v3, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 2564
    iget-object v0, v3, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, v3, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2566
    :cond_538
    iget-object v0, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    int-to-long v1, v0

    iget-wide v4, v3, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_54d

    int-to-long v0, v0

    .line 2567
    iput-wide v0, v3, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 2568
    iget-object v0, v3, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v1, v3, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2573
    :cond_54d
    iget-object v0, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    iget-boolean v1, v3, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    if-eq v0, v1, :cond_55a

    .line 2574
    iput-boolean v0, v3, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    .line 2575
    invoke-virtual {v3, v0}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    .line 2579
    :cond_55a
    iget-object v0, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_564

    move v0, v6

    goto :goto_565

    :cond_564
    move v0, v11

    .line 2581
    :goto_565
    iget-boolean v1, v3, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    if-eq v1, v0, :cond_56e

    .line 2582
    iput-boolean v0, v3, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 2583
    invoke-virtual {v3, v0}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    .line 2587
    :cond_56e
    iget-object v0, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_577

    goto :goto_578

    :cond_577
    move v6, v11

    .line 2589
    :goto_578
    iget-boolean v0, v3, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    if-eq v0, v6, :cond_59d

    .line 2590
    iget-object v0, v3, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_59b

    if-eqz v6, :cond_59b

    .line 2591
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notify wireless backpack on"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const-string v1, "3"

    .line 2592
    invoke-virtual {v3, v0, v1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v1, "set_wirelesscharger_mode,3"

    .line 2593
    invoke-virtual {v3, v0, v1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2595
    :cond_59b
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    :cond_59d
    return-void
.end method

.method public final processValuesLocked(ZLjava/io/PrintWriter;)V
    .registers 3

    .line 3916
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    .line 3918
    iget p0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_c
    return-void
.end method

.method public final readBatteryAsocFromEfsLocked()J
    .registers 3

    const-string v0, "/efs/FactoryApp/asoc"

    .line 3465
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3467
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@readBatteryAsocFromEfsLocked: not exist"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    .line 3470
    :cond_12
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readBatteryInfo(Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    return-wide v0

    .line 3579
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "!@[BatteryInfo] "

    if-nez p0, :cond_27

    .line 3582
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : data is null."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 3585
    :cond_27
    :try_start_27
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2b} :catch_2c

    goto :goto_4d

    .line 3587
    :catch_2c
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : data is \""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    return-wide v0
.end method

.method public final readBatteryMaxCurrentFromEfsLocked()J
    .registers 6

    const-string v0, "/efs/FactoryApp/max_current"

    .line 3421
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_11

    const-wide/16 v1, -0x1

    .line 3423
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    :cond_11
    return-wide v1
.end method

.method public final readBatteryMaxTempFromEfsLocked()J
    .registers 6

    const-string v0, "/efs/FactoryApp/max_temp"

    .line 3392
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_11

    const-wide/16 v1, -0x1

    .line 3394
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    :cond_11
    return-wide v1
.end method

.method public final readBatteryUsageFromEfsLocked()J
    .registers 6

    const-string v0, "/efs/FactoryApp/batt_discharge_level"

    .line 3352
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_11

    const-wide/16 v1, 0x1

    .line 3354
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I

    :cond_11
    return-wide v1
.end method

.method public final readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 p0, 0x0

    .line 3597
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_48

    .line 3599
    :try_start_e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 3600
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 3601
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@[BatteryInfo] readFromFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/efs/FactoryApp/batt_discharge_level"

    .line 3602
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/16 v1, 0x1b0

    const/16 v2, 0x3e8

    const/16 v3, 0x3ef

    .line 3603
    invoke-static {p1, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_44} :catch_45

    goto :goto_5e

    :catch_45
    move-object p1, p0

    move-object p0, v0

    goto :goto_49

    :catch_48
    move-object p1, p0

    .line 3608
    :goto_49
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "!@[BatteryInfo] IOException in readFromFile"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5d

    .line 3611
    :try_start_52
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5d

    .line 3614
    :catch_56
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@[BatteryInfo] Exception in readFromFile"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    :goto_5d
    move-object p0, p1

    :cond_5e
    :goto_5e
    return-object p0
.end method

.method public final registerContentObserver(Landroid/content/ContentResolver;)V
    .registers 10

    const-string/jumbo v0, "led_indicator_charing"

    const/4 v1, 0x1

    const/4 v2, -0x2

    .line 1654
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v4

    :goto_f
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    const-string/jumbo v3, "led_indicator_low_battery"

    .line 1655
    invoke-static {p1, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_1c

    move v5, v1

    goto :goto_1d

    :cond_1c
    move v5, v4

    :goto_1d
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 1656
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@Led Charging Settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@Led Low Battery Settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    const/4 v7, -0x1

    invoke-virtual {p1, v0, v4, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1660
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$LedSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1663
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v0, :cond_72

    .line 1664
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V

    const-string v0, "adaptive_fast_charging"

    .line 1665
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$AdaptiveFastChargingSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1670
    :cond_72
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    if-eqz v0, :cond_a8

    const-string/jumbo v0, "super_fast_charging"

    .line 1671
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_81

    move v3, v1

    goto :goto_82

    :cond_81
    move v3, v4

    :goto_82
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 1672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@SuperFastCharging Settings = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setSuperFastCharging(Z)V

    .line 1674
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$SuperFastChargingSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1679
    :cond_a8
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    if-eqz v0, :cond_11d

    const-string/jumbo v0, "show_wireless_charger_menu"

    .line 1680
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_b7

    move v0, v1

    goto :goto_b8

    :cond_b7
    move v0, v4

    :goto_b8
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    const-string/jumbo v0, "wireless_fast_charging"

    .line 1681
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_c5

    move v3, v1

    goto :goto_c6

    :cond_c5
    move v3, v4

    :goto_c6
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 1682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@WirelessFastCharging Settings = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    .line 1684
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$WirelessFastChargingSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1686
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    if-eqz v0, :cond_11d

    const-string/jumbo v0, "refresh_rate_mode"

    .line 1687
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 1689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@RefreshRateMode Setting = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setRefreshRateMode(I)V

    .line 1691
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1698
    :cond_11d
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    if-eqz v0, :cond_153

    const-string/jumbo v0, "pass_through"

    .line 1699
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_12c

    move v3, v1

    goto :goto_12d

    :cond_12c
    move v3, v4

    :goto_12d
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 1700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@mPassThroughSettingsEnable Settings = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setPassThrough(Z)V

    .line 1702
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsObserver:Lcom/android/server/BatteryService$PassThroughSettingsObserver;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1707
    :cond_153
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    if-eqz v0, :cond_19c

    const-string/jumbo v0, "protect_battery"

    .line 1708
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_162

    move v3, v1

    goto :goto_163

    :cond_162
    move v3, v4

    :goto_163
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 1709
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1711
    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_173

    goto :goto_174

    :cond_173
    move v1, v4

    :goto_174
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@mFullCapacityEnable Settings = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1714
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver;

    invoke-virtual {p1, v0, v4, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1720
    :cond_19c
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v0, :cond_1cf

    const/16 v0, 0x1e

    const-string/jumbo v1, "tx_battery_limit"

    .line 1721
    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 1722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Tx Battery Limit Settings = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iget v0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingTxBatteryLimit(I)V

    .line 1724
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$TxBatteryLimitSettingsObserver;

    invoke-virtual {p1, v0, v4, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1cf
    const-string v0, "/sys/class/power_supply/battery/wc_param_info"

    .line 1730
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    iget v1, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    if-eq v1, v7, :cond_1f3

    if-eqz v0, :cond_1f3

    .line 1732
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wireless_wc_write"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1733
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$WcParamInfoSettingsObserver;

    invoke-virtual {p1, v1, v4, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1734
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setWcParamInfo(Ljava/lang/String;)V

    :cond_1f3
    return-void
.end method

.method public final registerHealthCallback()V
    .registers 9

    const-string v0, "HealthInitWrapper"

    .line 1741
    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 1744
    :try_start_5
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/BatteryService;)V

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_94
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_10} :catch_8a
    .catchall {:try_start_5 .. :try_end_10} :catchall_88

    .line 1752
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    const-string v0, "HealthInitWaitUpdate"

    .line 1755
    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 1759
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1760
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1761
    :goto_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    if-nez v3, :cond_5e

    .line 1762
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "health: Waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_1f .. :try_end_4f} :catchall_85

    .line 1765
    :try_start_4f
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_54} :catch_55
    .catchall {:try_start_4f .. :try_end_54} :catchall_85

    goto :goto_1f

    .line 1767
    :catch_55
    :try_start_55
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "health: InterruptedException when waiting for update.  Continuing..."

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1771
    :cond_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_85

    .line 1773
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: Waited "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms and received the update."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void

    :catchall_85
    move-exception p0

    .line 1771
    :try_start_86
    monitor-exit v2
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0

    :catchall_88
    move-exception p0

    goto :goto_a2

    :catch_8a
    move-exception p0

    .line 1749
    :try_start_8b
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    throw p0

    :catch_94
    move-exception p0

    .line 1746
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "health: cannot register callback. (RemoteException)"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_a2
    .catchall {:try_start_8b .. :try_end_a2} :catchall_88

    .line 1752
    :goto_a2
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 1753
    throw p0
.end method

.method public final resetBattery(ZLjava/io/PrintWriter;)V
    .registers 6

    .line 3890
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 3891
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 3895
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v0, v2}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 3898
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 3900
    :cond_16
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    if-eqz p1, :cond_21

    .line 3901
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 3902
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    :cond_21
    return-void
.end method

.method public final saveBatteryInfo(Ljava/lang/String;J)I
    .registers 4

    .line 3621
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public final sendBatteryChangedIntentLocked()V
    .registers 10

    .line 2602
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x60000000

    .line 2603
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2607
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    .line 2608
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2610
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 2611
    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    .line 2612
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2616
    iget-object v5, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_42

    .line 2617
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v8, v5, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-nez v8, :cond_3c

    iget-boolean v8, v5, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-nez v8, :cond_3c

    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v5, :cond_39

    goto :goto_3c

    .line 2621
    :cond_39
    iput v6, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    goto :goto_3f

    :cond_3c
    :goto_3c
    const/4 v5, 0x2

    .line 2618
    iput v5, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 2623
    :goto_3f
    iput v6, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    goto :goto_46

    .line 2625
    :cond_42
    iput v7, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    .line 2626
    iput v7, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 2630
    :goto_46
    iget v5, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    const-string/jumbo v8, "pogo_plugged"

    if-ne v3, v5, :cond_51

    iget v3, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    if-eq v2, v3, :cond_a5

    .line 2631
    :cond_51
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    if-eqz v2, :cond_69

    const-string v2, "device_provisioned"

    .line 2632
    invoke-static {v4, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2633
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "kids_home_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    goto :goto_6b

    :cond_69
    move v2, v7

    move v3, v2

    :goto_6b
    if-eqz v2, :cond_86

    if-nez v3, :cond_86

    .line 2637
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoDockIntent:I

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2638
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2639
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$21;

    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$21;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a5

    .line 2649
    :cond_86
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device_provisioned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "kids_home_mode: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    :cond_a5
    :goto_a5
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 2658
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    if-eqz v2, :cond_b4

    goto :goto_b5

    :cond_b4
    move v6, v7

    .line 2662
    :goto_b5
    iget v2, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v3, "seq"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2663
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2664
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string/jumbo v3, "health"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2665
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v3, "present"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2666
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v3, "level"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2667
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v3, "battery_low"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x64

    const-string/jumbo v3, "scale"

    .line 2668
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "icon-small"

    .line 2669
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2670
    iget v1, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v2, "plugged"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2671
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v2, "voltage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2672
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v2, "temperature"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2674
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v2, "technology"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2675
    iget v1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    const-string/jumbo v2, "invalid_charger"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2676
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    const-string/jumbo v2, "max_charging_current"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2678
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    const-string/jumbo v2, "max_charging_voltage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2681
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string v2, "charge_counter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2684
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    const-string/jumbo v2, "online"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2685
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    const-string v2, "charge_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2686
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    const-string/jumbo v2, "power_sharing"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "hv_charger"

    .line 2687
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2688
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    const-string v2, "charger_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2689
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    const-string v2, "capacity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2690
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    const-string v2, "current_now"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2691
    iget v1, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2692
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const-string/jumbo v2, "misc_event"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2693
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    const-string v2, "current_event"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2702
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ACTION_BATTERY_CHANGED: level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", health:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", usb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", wireless:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pogo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", misc:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2709
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", charge_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", charger_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", voltage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", temperature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", online:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current_avg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hvc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", capacity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current_event:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 2719
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current_now:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mcc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mcv:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", present:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", scale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", technology:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v3, v3, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2702
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendBatteryEventIntentLocked()V
    .registers 6

    .line 2734
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v0, v1, :cond_f

    iget v1, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v1, v2, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 2743
    :goto_15
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    const/high16 v2, 0x24000000

    if-eq v0, v1, :cond_37

    .line 2744
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2745
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "water"

    .line 2747
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2749
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$22;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2756
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 2760
    :cond_37
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v0, v1, :cond_45

    iget v0, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-eq v0, v1, :cond_6b

    .line 2762
    :cond_45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2764
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2767
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const-string/jumbo v2, "misc_event"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2768
    iget v1, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    const-string/jumbo v2, "sec_plug_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2770
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$23;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$23;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6b
    return-void
.end method

.method public final sendBatteryLevelChangedIntentLocked()V
    .registers 10

    .line 2916
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2917
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2918
    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v4, "seq"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2919
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2920
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string/jumbo v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2921
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v4, "present"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2922
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2923
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v4, "battery_low"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    .line 2924
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2925
    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v5, "plugged"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2926
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v5, "voltage"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2927
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v5, "temperature"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2928
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string v5, "charge_counter"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "android.os.extra.EVENT_TIMESTAMP"

    .line 2929
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2931
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    .line 2932
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 2934
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le v0, v4, :cond_8a

    .line 2935
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_8a
    if-eqz v3, :cond_a7

    .line 2940
    iget-wide v3, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v5, v1, v3

    const-wide/32 v7, 0xea60

    cmp-long v0, v5, v7

    if-lez v0, :cond_9a

    const-wide/16 v0, 0x0

    goto :goto_9d

    :cond_9a
    add-long/2addr v3, v7

    sub-long v0, v3, v1

    .line 2942
    :goto_9d
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a7
    return-void
.end method

.method public final sendDeteriorationIntentLocked(Z)V
    .registers 9

    .line 2784
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const/high16 v1, 0xf0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    const-wide/16 v5, 0xa

    if-eqz p1, :cond_14

    if-eqz v0, :cond_2a

    goto :goto_2c

    .line 2795
    :cond_14
    iget p1, p0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    if-eq p1, v0, :cond_2a

    .line 2796
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz p1, :cond_25

    const/16 p1, 0xf

    if-ne v0, p1, :cond_25

    .line 2798
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    if-nez p1, :cond_26

    goto :goto_27

    :cond_25
    move v1, v4

    :cond_26
    move-wide v2, v5

    .line 2802
    :goto_27
    iput v0, p0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    goto :goto_2c

    :cond_2a
    move v1, v4

    move-wide v2, v5

    :goto_2c
    if-eqz v1, :cond_4e

    .line 2806
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "deterioration"

    .line 2807
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 2808
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2809
    sget-object v1, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2810
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$24;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/server/BatteryService$24;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4e
    return-void
.end method

.method public final sendEnqueuedBatteryLevelChangedEvents()V
    .registers 5

    .line 2948
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2949
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2950
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 2951
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_31

    .line 2952
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 2953
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.os.extra.EVENTS"

    .line 2954
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2956
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2958
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    return-void

    :catchall_31
    move-exception p0

    .line 2951
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final sendOTGIntentLocked()V
    .registers 4

    .line 2824
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESPONSE_OTG_CHARGE_BLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2826
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$25;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$25;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendScreenState()V
    .registers 2

    .line 3181
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mScreenOn:Z

    const-string v0, "/sys/class/power_supply/battery/lcd"

    invoke-static {v0, p0}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final sendWirelessPowerSharingIntentLocked()V
    .registers 8

    .line 2838
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 2840
    :goto_c
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    const/high16 v4, 0x10000000

    if-eq v3, v0, :cond_68

    .line 2841
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "enabled"

    .line 2842
    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2843
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2844
    sget-object v5, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2845
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/BatteryService$26;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/BatteryService$26;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2852
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    const-wide/16 v5, 0x0

    const-string v3, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    .line 2853
    invoke-virtual {p0, v3, v5, v6, v0}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    .line 2854
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIRELESS_ENABLE_SYSFS_PATH_FOR_EPEN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    if-eqz v3, :cond_68

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v3, :cond_68

    const-string v3, "/sys/class/sec/tsp/cmd"

    if-eqz v0, :cond_62

    const-string/jumbo v0, "set_wirelesscharger_mode,1"

    .line 2859
    invoke-virtual {p0, v3, v0}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_68

    :cond_62
    const-string/jumbo v0, "set_wirelesscharger_mode,0"

    .line 2861
    invoke-virtual {p0, v3, v0}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2867
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_71

    goto :goto_72

    :cond_71
    move v1, v2

    .line 2869
    :goto_72
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    if-eq v0, v1, :cond_96

    .line 2870
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "connected"

    .line 2871
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2872
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2873
    sget-object v2, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2874
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$27;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/BatteryService$27;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2892
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 2895
    :cond_96
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    if-eq v0, v1, :cond_c2

    .line 2896
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2897
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    const-string/jumbo v2, "tx_event"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2898
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2899
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$28;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$28;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2910
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    :cond_c2
    return-void
.end method

.method public setAdaptiveFastCharging(Z)V
    .registers 6

    .line 3074
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    iget v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    xor-int/lit8 v2, p1, 0x1

    const-string v3, "afc"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(IZLjava/lang/String;)V

    .line 3077
    iget-object v0, p0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    const-wide/16 v1, 0x0

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 3078
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "success to set AFC sysfs as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 3080
    :cond_2f
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p1, "fail to set AFC sysfs"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return-void
.end method

.method public final setBatteryLevel(IZ)V
    .registers 5

    .line 3862
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_b

    .line 3866
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 3869
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput p1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/4 p1, 0x1

    .line 3870
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 3871
    new-instance p1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/BatteryService;Z)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final setCallWirelessPowerSharingExternelEvent(Z)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eqz p1, :cond_4b

    .line 807
    iget-object p1, p0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_27

    .line 808
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 809
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVideoCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_27
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call start, isVideoCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    if-eqz p1, :cond_47

    .line 814
    invoke-virtual {p0, v0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    goto :goto_71

    .line 817
    :cond_47
    invoke-virtual {p0, v1, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    goto :goto_71

    .line 821
    :cond_4b
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call end, isVideoCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_6c

    .line 823
    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    goto :goto_6f

    .line 825
    :cond_6c
    invoke-virtual {p0, v1, v2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 827
    :goto_6f
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    :goto_71
    return-void
.end method

.method public final setChargerAcOnline(ZZ)V
    .registers 5

    .line 3849
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_b

    .line 3853
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 3856
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    const/4 p1, 0x1

    .line 3857
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 3858
    new-instance p1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/BatteryService;Z)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final setFullChargingOnDockStartTime()V
    .registers 5

    .line 3523
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    .line 3524
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullChargingOnDockStartTime start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mFullChargingOnDockStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHiccupDisable()Z
    .registers 3

    const-string v0, "/sys/class/sec/switch/hiccup"

    const-string v1, "DISABLE"

    .line 3111
    invoke-virtual {p0, v0, v1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setOTGEnableDisable(Z)Z
    .registers 5

    const-string v0, "/sys/class/power_supply/otg/online"

    const-wide/16 v1, 0x0

    .line 3061
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result p0

    return p0
.end method

.method public setPassThrough(Z)V
    .registers 5

    const-string v0, "/sys/class/power_supply/battery/pass_through"

    const-wide/16 v1, 0x0

    .line 3101
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 3102
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "success to set PassThrough sysfs as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 3104
    :cond_22
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p1, "fail to set PassThrough sysfs"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method public final setRefreshRateMode(I)V
    .registers 2

    const-string p0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    if-nez p1, :cond_9

    const/4 p1, 0x5

    .line 1883
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_d

    :cond_9
    const/4 p1, 0x6

    .line 1885
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    :goto_d
    return-void
.end method

.method public setResponseHiccupEvent()V
    .registers 2

    const-string p0, "/sys/class/power_supply/battery/batt_misc_event"

    const/16 v0, 0x2000

    .line 3115
    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setSuperFastCharging(Z)V
    .registers 6

    .line 3088
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    iget v1, p0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    xor-int/lit8 v2, p1, 0x1

    const-string/jumbo v3, "sfc"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(IZLjava/lang/String;)V

    const-wide/16 v0, 0x0

    xor-int/lit8 v2, p1, 0x1

    const-string v3, "/sys/class/power_supply/battery/pd_disable"

    .line 3091
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 3092
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "success to set SFC sysfs as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 3094
    :cond_30
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p1, "fail to set SFC sysfs"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-void
.end method

.method public final setWcParamInfo(Ljava/lang/String;)V
    .registers 5

    .line 1893
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    const/4 v0, -0x2

    const/4 v1, 0x1

    const-string/jumbo v2, "wc param"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(IZLjava/lang/String;)V

    .line 1894
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wireless_wc_write"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setWirelessChargingState(Z)V
    .registers 9

    .line 3159
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wirelessChargingState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", notifyWirelessEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/sec/tsp/cmd"

    const-string v2, "/sys/class/sec/switch/wireless"

    const-string v3, "/sys/class/sec/sec_epen/epen_wcharging_mode"

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_45

    .line 3161
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    if-nez v6, :cond_45

    const-string/jumbo p1, "notify wireless on"

    .line 3162
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 3163
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 3164
    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    .line 3165
    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    const-string/jumbo p1, "set_wirelesscharger_mode,1"

    .line 3166
    invoke-virtual {p0, v1, p1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_68

    :cond_45
    if-nez p1, :cond_68

    .line 3167
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    if-eqz p1, :cond_68

    .line 3168
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    if-nez p1, :cond_68

    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    if-nez p1, :cond_68

    const-string/jumbo p1, "notify wireless off"

    .line 3169
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3170
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 3171
    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    .line 3172
    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    const-string/jumbo p1, "set_wirelesscharger_mode,0"

    .line 3173
    invoke-virtual {p0, v1, p1}, Lcom/android/server/BatteryService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_68
    :goto_68
    return-void
.end method

.method public final setWirelessFastCharging(Z)V
    .registers 5

    .line 1867
    iget v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 1868
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    xor-int/lit8 v1, p1, 0x1

    const-string/jumbo v2, "wfc"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(IZLjava/lang/String;)V

    :cond_f
    const-string p0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    if-eqz p1, :cond_18

    const/4 p1, 0x2

    .line 1874
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_1c

    :cond_18
    const/4 p1, 0x1

    .line 1876
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    :goto_1c
    return-void
.end method

.method public setWirelessPowerSharing(Z)Z
    .registers 5

    const-string v0, "/sys/class/power_supply/battery/wc_tx_en"

    const-wide/16 v1, 0x0

    .line 3121
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/BatteryService;->writeToFile(Ljava/lang/String;JZ)Z

    move-result p0

    return p0
.end method

.method public final setWirelessPowerSharingExternelEventInternal(II)V
    .registers 7

    .line 3125
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3126
    :try_start_3
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWirelessPowerSharingExternelEventInternal packageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    iget v1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    not-int p1, p1

    and-int/2addr p1, v1

    or-int/2addr p1, p2

    if-eq p1, v1, :cond_30

    const-string p2, "/sys/class/power_supply/battery/ext_event"

    .line 3133
    invoke-static {p2, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    .line 3134
    iput p1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    .line 3136
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final setWirelessPowerSharingTxBatteryLimit(I)V
    .registers 2

    const-string p0, "/sys/class/power_supply/battery/wc_tx_stop_capacity"

    .line 3140
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final shouldSendBatteryLowLocked()Z
    .registers 6

    .line 1899
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1900
    :goto_9
    iget v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    if-nez v0, :cond_29

    .line 1908
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    if-eq v4, v2, :cond_29

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v4, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v4, :cond_29

    if-nez v3, :cond_28

    iget v3, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-gt v3, v4, :cond_28

    iget p0, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    if-le v0, p0, :cond_29

    :cond_28
    move v1, v2

    :cond_29
    return v1
.end method

.method public final shouldShutdownLocked()Z
    .registers 6

    .line 1918
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_e

    if-ne v1, v2, :cond_c

    goto :goto_d

    :cond_c
    move v2, v3

    :goto_d
    return v2

    .line 1921
    :cond_e
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-lez v1, :cond_13

    return v3

    .line 1926
    :cond_13
    iget-boolean v4, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    if-nez v4, :cond_18

    return v3

    :cond_18
    if-nez v1, :cond_72

    .line 1931
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v1, :cond_72

    .line 1932
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    if-ltz v0, :cond_58

    const/16 v0, 0xf

    .line 1933
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1934
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ BatteryService plug type: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " battery current avg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", so doesn\'t shutdown"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1941
    :cond_58
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v0, :cond_73

    .line 1942
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p0

    if-eqz p0, :cond_73

    .line 1943
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result p0

    if-eqz p0, :cond_73

    .line 1944
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "Emergency mode is on so doesn\'t shutdown"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_72
    move v2, v3

    :cond_73
    return v2
.end method

.method public final shutdownIfNoPowerLocked()V
    .registers 4

    .line 1967
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->shouldShutdownLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1968
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$15;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2005
    :cond_10
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-nez v0, :cond_4d

    .line 2006
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 2007
    :cond_22
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ BatteryService mBootCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " am.isSystemReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2008
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", so doesn\'t shutdown"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2007
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return-void
.end method

.method public final shutdownIfOverTempLocked()V
    .registers 4

    .line 2022
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const/16 v1, 0x258

    if-le v0, v1, :cond_22

    .line 2023
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "!@Over temp , send cool dowm intent"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    iget-object v0, p0, Lcom/android/server/BatteryService;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    const/4 v1, 0x2

    const-string v2, "battery_overheat_level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2025
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mIntentCheckCooldownLevel:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public final startCallThread()V
    .registers 3

    .line 832
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CallThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    .line 833
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 835
    new-instance v0, Lcom/android/server/BatteryService$7;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mCallHandler:Landroid/os/Handler;

    return-void
.end method

.method public final suspendBatteryInput()V
    .registers 2

    .line 3907
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 3911
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    .line 3912
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    return-void

    .line 3908
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "battery suspend_input is only supported on debuggable builds"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unplugBattery(ZLjava/io/PrintWriter;)V
    .registers 5

    .line 3875
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_b

    .line 3879
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 3882
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 3883
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 3884
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    const/4 v0, 0x1

    .line 3885
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 3886
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final update(Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .registers 7

    .line 2048
    iget-object v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    const-string v1, "HealthInfoUpdate"

    .line 2050
    invoke-static {v1}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    const-string v1, "BatteryChargeCounter"

    .line 2052
    iget v2, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v1, "BatteryCurrent"

    .line 2054
    iget v2, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v1, "PlugType"

    .line 2058
    invoke-static {p1}, Lcom/android/server/BatteryService;->plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I

    move-result v2

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v1, "BatteryStatus"

    .line 2061
    iget v2, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2063
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2064
    :try_start_2b
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v2, :cond_3d

    .line 2065
    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2068
    iput-object p1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    const/4 p1, 0x0

    .line 2072
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 2073
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_42

    .line 2078
    :cond_3d
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {p0, p1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 2081
    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_47

    .line 2082
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void

    :catchall_47
    move-exception p0

    .line 2081
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V
    .registers 5

    const-string v0, "adaptive_fast_charging"

    const/4 v1, 0x1

    const/4 v2, -0x2

    .line 3067
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 3068
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@AdaptiveFastCharging Settings = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    return-void
.end method

.method public final updateBatteryDate()V
    .registers 4

    const-string v0, "/efs/FactoryApp/batt_beginning_date"

    .line 1453
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1457
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getCurrentCalender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1459
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_33

    .line 1460
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->writeBatteryDate(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 1461
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@[B_DATE] succeed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1463
    :cond_33
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@[B_DATE] writing fail"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1466
    :cond_3b
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v0, "!@[B_DATE] isEfsExist"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    return-void
.end method

.method public final updateBatteryWarningLevelLocked()V
    .registers 4

    .line 1779
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1780
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 1782
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    .line 1792
    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v0, v1, :cond_1b

    .line 1793
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1795
    :cond_1b
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    const/4 v0, 0x1

    .line 1797
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method public final writeBatteryDate(Ljava/lang/String;)Z
    .registers 7

    const-string/jumbo v0, "ril.rfcal_date"

    .line 1472
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    const-string v2, "."

    const-string v3, ""

    .line 1474
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1475
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_51

    .line 1476
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1477
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1478
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@[B_DATE] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v0, p1, :cond_4b

    .line 1480
    iput p1, p0, Lcom/android/server/BatteryService;->mSavedBatteryBeginningDate:I

    const-string p0, "/efs/FactoryApp/batt_beginning_date"

    .line 1481
    invoke-static {p0, p1}, Lcom/android/server/BatteryService;->fileWriteInt(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_4b
    const-string p0, "!@[B_DATE] date error"

    .line 1484
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1488
    :cond_51
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p1, "!@[B_DATE] rfcal_date length error"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1492
    :cond_59
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p1, "!@[B_DATE] rfcal_date is null"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final writeToFile(Ljava/lang/String;J)I
    .registers 7

    const/4 p0, 0x0

    .line 3627
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_72

    const-wide/16 v1, 0x0

    .line 3629
    :try_start_10
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string/jumbo p0, "line.separator"

    .line 3630
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 3632
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@[BatteryInfo] writeToFile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const-string p0, "/efs/FactoryApp/asoc"

    .line 3634
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/16 p2, 0x3ef

    const/16 p3, 0x3e8

    if-eqz p0, :cond_62

    const/16 p0, 0x1a0

    .line 3635
    invoke-static {p1, p0, p3, p2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_62
    const-string p0, "/efs/FactoryApp/batt_discharge_level"

    .line 3638
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6f

    const/16 p0, 0x1b0

    .line 3639
    invoke-static {p1, p0, p3, p2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_6f} :catch_71

    :cond_6f
    const/4 p0, 0x0

    return p0

    :catch_71
    move-object p0, v0

    .line 3645
    :catch_72
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p2, "!@[BatteryInfo] IOException in writeToFile"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_86

    .line 3648
    :try_start_7b
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_86

    .line 3651
    :catch_7f
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string p1, "!@[BatteryInfo] Exception in writeToFile"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    const/4 p0, -0x1

    return p0
.end method

.method public writeToFile(Ljava/lang/String;JZ)Z
    .registers 8

    .line 3218
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3220
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_23

    .line 3221
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_23
    const/4 p0, 0x0

    .line 3227
    :try_start_24
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "rw"

    invoke-direct {v1, v2, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_31} :catch_4e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_31} :catch_4a

    .line 3233
    :try_start_31
    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p4, :cond_3d

    const-string p0, "1"

    .line 3234
    :goto_38
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_40

    :cond_3d
    const-string p0, "0"

    goto :goto_38

    :goto_40
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 3235
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_46} :catch_48

    const/4 p0, 0x1

    return p0

    :catch_48
    move-exception p0

    goto :goto_53

    :catch_4a
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_53

    :catch_4e
    move-exception p1

    .line 3229
    :try_start_4f
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_4a

    return v0

    .line 3237
    :goto_53
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 3239
    :try_start_56
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p0

    .line 3241
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5e
    return v0
.end method
