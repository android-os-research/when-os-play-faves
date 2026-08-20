.class public Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.super Ljava/lang/Object;
.source "EyeComfortSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;,
        Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field public static final ECSS_KEYS:[Ljava/lang/String;

.field public static final ECS_ON:Ljava/lang/String; = "sys.eyecomfortsolution.ecson"

.field public static final TAG:Ljava/lang/String; = "EyeComfortSolutionService"


# instance fields
.field public ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

.field public ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I

.field public final BED_TRANSITION_TIME:I

.field public BOPR_MAX_VALUE:I

.field public BOPR_VALUE_STEP:I

.field public final DEBUG:Z

.field public final DEFAULT_BED_TIME:I

.field public final DEFAULT_WAKEUP_TIME:I

.field public GET_SYSTEM_SERVICES_MILLIS:I

.field public final HIGH_DAY_BLF:I

.field public final MAX_BOPR_STEP:I

.field public final MAX_TOTAL_STEP:I

.field public final MORNING_BLF_INTERVAL_A:I

.field public final MORNING_BLF_INTERVAL_B:I

.field public final MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_OFF:I

.field public final MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_ON:I

.field public final MSG_GET_BOPR_SENSOR_VALUE_OFF:I

.field public final MSG_GET_BOPR_SENSOR_VALUE_ON:I

.field public final MSG_GET_SYSTEM_SERVICES:I

.field public final MSG_NIGHT_MODE_CUSTOM_TIME_CHANGED:I

.field public final MSG_SET_BLUE_LIGHT_FILTER_DAY:I

.field public final NIGHT_BLF_INTERVAL:I

.field public NIGHT_DIM_MODE_NODE:Ljava/lang/String;

.field public NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

.field public final RANGE_BOPR_BLF:I

.field public final RANGE_DAY_BLF:I

.field public final RANGE_DAY_ONLY_BLF:I

.field public final WAKEUP_TRANSITION_TIME_A:I

.field public final WAKEUP_TRANSITION_TIME_B:I

.field public app_weighting_factor:F

.field public bopr_average_value_for_bigdata_blf_off:I

.field public bopr_average_value_for_bigdata_blf_on:I

.field public bopr_cumulative_count:I

.field public bopr_cumulative_count_for_bigdata_blf_off:I

.field public bopr_cumulative_count_for_bigdata_blf_on:I

.field public bopr_cumulative_value_for_bigdata_blf_off:I

.field public bopr_cumulative_value_for_bigdata_blf_on:I

.field public bopr_current_value:I

.field public cal_value_sum:F

.field public defaultBedTime:I

.field public defaultWakeupTime:I

.field public mAdaptiveBlueLightFilterSupported:Z

.field public mBedtime_friday:I

.field public mBedtime_monday:I

.field public mBedtime_saturday:I

.field public mBedtime_sunday:I

.field public mBedtime_thursday:I

.field public mBedtime_tuesday:I

.field public mBedtime_wednesday:I

.field public mBlueLightFilterAdaptiveModeEnabled:Z

.field public mBlueLightFilterCustomAlwaysOn:Z

.field public mBlueLightFilterEnableTime:Z

.field public mBlueLightFilterModeEnabled:Z

.field public mBlueLightFilterScheduledTime:Z

.field public mBoprSensor:Landroid/hardware/Sensor;

.field public mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

.field public mBoprSensorListener:Landroid/hardware/SensorEventListener;

.field public mColorOnPixelRatioSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentStateSleep:Z

.field public mCurrentStateWakeup:Z

.field public mDefaultThemeEnabled:Z

.field public mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mLastBoprBlueLightFilterIndex:I

.field public mLastDayBlueLightFilterIndex:I

.field public mLastTotalBlueLightFilterIndex:I

.field public mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public mNightDimFontConfigValue:I

.field public mNightDimFontConfigValuePrev:I

.field public mNightDimModeEnabled:Z

.field public mPlatformBrightnessValue:F

.field public mScreenOn:Z

.field public mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

.field public mUseEyeComfortSolutionServiceConfig:Z

.field public mWakeupTime_friday:I

.field public mWakeupTime_monday:I

.field public mWakeupTime_saturday:I

.field public mWakeupTime_sunday:I

.field public mWakeupTime_thursday:I

.field public mWakeupTime_tuesday:I

.field public mWakeupTime_wednesday:I

.field public mWorkingCondition:Z

.field public prevTotalStep:I


# direct methods
.method public static synthetic $r8$lambda$He-NEB7HeaGXNLIQ2FhU-CWlidY(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/app/IActivityManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->lambda$updateNightDimSettings$0(Landroid/app/IActivityManager;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetBOPR_VALUE_STEP(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_cumulative_count(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_cumulative_count_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_cumulative_count_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_cumulative_value_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_cumulative_value_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbopr_current_value(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlueLightFilterAdaptiveModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlueLightFilterEnableTime(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlueLightFilterModeEnabled(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBoprSensorForBigDataListener(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBoprSensorListener(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorEventListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemHqmManager(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/os/SemHqmManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputbopr_average_value_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_average_value_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_cumulative_count(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_cumulative_count_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_cumulative_count_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_cumulative_value_for_bigdata_blf_off(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_cumulative_value_for_bigdata_blf_on(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputbopr_current_value(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSemHqmManager(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/SemHqmManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mblue_light_filter_setting_bopr(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_bopr(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mblue_light_filter_setting_day(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbopr_for_bigdata_data_reset(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_for_bigdata_data_reset()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBoprSensorValue(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBoprSensorValue(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBoprSensorValueForBigData(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBoprSensorValueForBigData(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSystemServices(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getSystemServices()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBigDatatoHQM(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sendBigDatatoHQM()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setting_is_changed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNightDimSettings(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "BOPR_AVG_VALUE_BLF_ON"

    const-string v1, "BOPR_AVG_VALUE_BLF_OFF"

    .line 176
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ECSS_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 16

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "/sys/class/lcd/panel/night_dim"

    .line 91
    iput-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel1/night_dim"

    .line 92
    iput-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    .line 94
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->DEBUG:Z

    const/4 v1, 0x2

    .line 96
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MORNING_BLF_INTERVAL_A:I

    const/4 v2, 0x5

    .line 97
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MORNING_BLF_INTERVAL_B:I

    const/16 v3, 0xa

    .line 98
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_BLF_INTERVAL:I

    const/16 v3, 0x1770

    .line 100
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->HIGH_DAY_BLF:I

    const/16 v3, 0x7d0

    .line 101
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->RANGE_DAY_ONLY_BLF:I

    const/16 v3, 0x320

    .line 102
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->RANGE_DAY_BLF:I

    const/16 v3, 0x4b0

    .line 103
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->RANGE_BOPR_BLF:I

    const/16 v3, 0x5a

    .line 104
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MAX_TOTAL_STEP:I

    const/16 v3, 0x36

    .line 105
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MAX_BOPR_STEP:I

    const/16 v3, 0x168

    .line 107
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BED_TRANSITION_TIME:I

    const/16 v4, 0xb4

    .line 108
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->WAKEUP_TRANSITION_TIME_A:I

    .line 109
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->WAKEUP_TRANSITION_TIME_B:I

    const/4 v4, 0x0

    .line 111
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->DEFAULT_BED_TIME:I

    .line 112
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->DEFAULT_WAKEUP_TIME:I

    const/4 v5, 0x1

    .line 114
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_SYSTEM_SERVICES:I

    .line 115
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_ON:I

    const/4 v1, 0x3

    .line 116
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_OFF:I

    const/4 v1, 0x4

    .line 117
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_ON:I

    .line 118
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_OFF:I

    const/4 v1, 0x6

    .line 119
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_SET_BLUE_LIGHT_FILTER_DAY:I

    const/4 v1, 0x7

    .line 120
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_NIGHT_MODE_CUSTOM_TIME_CHANGED:I

    const/16 v1, 0xfa0

    .line 122
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    const/16 v1, 0x2710

    .line 123
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    .line 124
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I

    .line 125
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    .line 127
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I

    .line 128
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 130
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    .line 131
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    .line 132
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    .line 133
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    .line 134
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    .line 135
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 137
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    const/4 v1, 0x0

    .line 138
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    const/4 v1, -0x1

    .line 141
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 142
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 143
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 144
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 145
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 147
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 148
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    .line 150
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 151
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 153
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 154
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 155
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 156
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 157
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 158
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 159
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 161
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 162
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 163
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 164
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 165
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 166
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 167
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    const/4 v2, 0x0

    .line 178
    iput-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    .line 184
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWorkingCondition:Z

    .line 185
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    .line 186
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 188
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 189
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 190
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    .line 191
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    .line 192
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 193
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 194
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 195
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    .line 196
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 197
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 198
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    .line 763
    new-instance v3, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    .line 783
    new-instance v3, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    .line 201
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 203
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "EyeComfortSolutionServiceThread"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 204
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 205
    new-instance v6, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget-object v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110156

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    .line 211
    new-instance v6, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    iget-object v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-string v7, "blue_light_filter"

    .line 216
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "blue_light_filter_night_dim"

    .line 217
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "blue_light_filter_adaptive_mode"

    .line 218
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "current_sec_active_themepackage"

    .line 219
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "blue_light_filter_type"

    .line 220
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v6, v7, v4, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 222
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 223
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 224
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 225
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 226
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 227
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 228
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 229
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 230
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 231
    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    new-instance v7, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;

    invoke-direct {v7, p0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver-IA;)V

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v2, v2

    add-long/2addr v12, v2

    invoke-virtual {v1, v5, v12, v13}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 238
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1b0

    .line 239
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    .line 241
    :cond_1b0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1bc

    .line 242
    iput-boolean v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 244
    :cond_1bc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A_BLF : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , COPR_IP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EyeComfortSolutionService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sys.eyecomfortsolution.ecson"

    const-string v3, "false"

    .line 245
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v0, :cond_1f0

    const-string/jumbo v0, "true"

    .line 248
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f0
    const-string v0, "EyeComfortSolutionService Enabled"

    .line 251
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$updateNightDimSettings$0(Landroid/app/IActivityManager;)V
    .registers 3

    .line 652
    :try_start_0
    invoke-interface {p1}, Landroid/app/IActivityManager;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 653
    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    iput p0, v0, Landroid/content/res/Configuration;->nightDim:I

    .line 654
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_27

    :catch_c
    move-exception p0

    .line 656
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot update Configuration : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EyeComfortSolutionService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method public static sysfsWrite(Ljava/lang/String;I)Z
    .registers 5

    .line 1108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_38

    const/4 p0, 0x0

    .line 1112
    :try_start_d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_24

    .line 1117
    :try_start_12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1118
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

    .line 1114
    :try_start_29
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_24

    return v1

    .line 1120
    :goto_2d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1122
    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 1124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    :goto_38
    return v1
.end method


# virtual methods
.method public final JsonParseData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const/4 p0, 0x0

    .line 876
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_15

    const/4 p0, 0x0

    :goto_7
    if-ge p0, p3, :cond_1b

    .line 878
    :try_start_9
    aget-object v1, p1, p0

    aget-object v2, p2, p0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_13

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :catch_13
    move-exception p0

    goto :goto_18

    :catch_15
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 882
    :goto_18
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 884
    :cond_1b
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\{"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\}"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final blue_light_filter_data_reset()V
    .registers 3

    const/4 v0, 0x0

    .line 577
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 578
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    const/4 v1, 0x0

    .line 579
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 580
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 581
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 582
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    return-void
.end method

.method public final blue_light_filter_setting_bopr(II)V
    .registers 8

    .line 327
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getting_platform_brightness_value()F

    move-result v0

    int-to-float p1, p1

    const/high16 v1, 0x43800000    # 256.0f

    div-float v1, p1, v1

    float-to-double v1, v1

    const-wide v3, 0x40019999a0000000L    # 2.200000047683716

    .line 330
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    mul-float/2addr v3, v0

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    .line 331
    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , bopr_value : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", platform_value : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , app_weighting : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , cal_value : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , sum_value : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , BOPR_MAX_VALUE : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EyeComfortSolutionService"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    const/16 v0, 0x36

    if-ge p1, v0, :cond_c5

    const/4 p1, 0x0

    :goto_76
    if-ge p1, v0, :cond_c5

    .line 336
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    div-int/2addr v2, v0

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    add-int/lit8 v4, v3, 0x1

    mul-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c2

    if-ne v3, p1, :cond_c2

    add-int/lit8 v3, v3, 0x1

    .line 337
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change BLF step by B-opr, BLF dayIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] , boprIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    .line 340
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    .line 341
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    :cond_c2
    add-int/lit8 p1, p1, 0x1

    goto :goto_76

    :cond_c5
    return-void
.end method

.method public final blue_light_filter_setting_day(Z)V
    .registers 19

    move-object/from16 v0, p0

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 349
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "EE"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 350
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "HH"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 351
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "mm"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 352
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 353
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 354
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v8, 0x0

    if-eqz p1, :cond_3b4

    .line 360
    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    const/4 v11, 0x1

    if-lt v9, v10, :cond_63

    if-le v6, v10, :cond_5e

    if-gt v6, v9, :cond_5e

    .line 362
    iput-boolean v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 363
    iput-boolean v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_70

    .line 365
    :cond_5e
    iput-boolean v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 366
    iput-boolean v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_70

    :cond_63
    if-le v6, v9, :cond_6c

    if-gt v6, v10, :cond_6c

    .line 370
    iput-boolean v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 371
    iput-boolean v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_70

    .line 373
    :cond_6c
    iput-boolean v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 374
    iput-boolean v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 378
    :goto_70
    iget-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    const-string v10, " , TimeValue : "

    const-string v12, " , Minute : "

    const-string v13, " , Hour : "

    const-string v14, "Week : "

    const/16 v7, 0x5a0

    const-string v8, "EyeComfortSolutionService"

    if-eqz v9, :cond_174

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " , wakeup state, defaultBedTime : "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " , start sleep : "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v15, v15, -0x168

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v15, v9, -0x168

    if-gez v15, :cond_115

    add-int/lit16 v15, v9, 0x5a0

    add-int/lit16 v15, v15, -0x168

    if-lt v6, v15, :cond_f4

    if-ge v6, v7, :cond_f4

    .line 382
    iput-boolean v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/2addr v9, v7

    add-int/lit16 v9, v9, -0x168

    if-ne v6, v9, :cond_e5

    .line 383
    iget-boolean v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v9, :cond_e5

    .line 384
    iget-object v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 v15, 0x2

    invoke-virtual {v9, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    move-object/from16 v16, v8

    int-to-long v7, v11

    add-long/2addr v1, v7

    invoke-virtual {v9, v15, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_e7

    :cond_e5
    move-object/from16 v16, v8

    .line 387
    :goto_e7
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    const/16 v2, 0x5a0

    add-int/2addr v1, v2

    add-int/lit16 v1, v1, -0x168

    sub-int v1, v6, v1

    div-int/lit8 v1, v1, 0xa

    const/4 v2, 0x1

    goto :goto_102

    :cond_f4
    move-object/from16 v16, v8

    move v2, v11

    if-ltz v6, :cond_105

    if-ge v6, v9, :cond_105

    .line 389
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v9, v6

    rsub-int v1, v9, 0x168

    .line 390
    div-int/lit8 v1, v1, 0xa

    :goto_102
    add-int/2addr v1, v2

    move-object v11, v10

    goto :goto_15d

    :cond_105
    if-ne v6, v9, :cond_111

    const/4 v1, 0x0

    .line 392
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    const-string v2, "WakeupTime"

    .line 394
    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    move-object v11, v10

    goto :goto_154

    :cond_111
    const/4 v1, 0x0

    .line 396
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    goto :goto_15b

    :cond_115
    move-object/from16 v16, v8

    add-int/lit16 v7, v9, -0x168

    if-ltz v7, :cond_15b

    add-int/lit16 v7, v9, -0x168

    if-lt v6, v7, :cond_149

    if-ge v6, v9, :cond_149

    const/4 v7, 0x1

    .line 401
    iput-boolean v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/lit16 v9, v9, -0x168

    if-ne v6, v9, :cond_13d

    .line 402
    iget-boolean v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v7, :cond_13d

    .line 403
    iget-object v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object v7, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v9, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    move-object v11, v10

    int-to-long v9, v9

    add-long/2addr v1, v9

    invoke-virtual {v7, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_13e

    :cond_13d
    move-object v11, v10

    .line 406
    :goto_13e
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v1, v1, -0x168

    sub-int v1, v6, v1

    div-int/lit8 v1, v1, 0xa

    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_15d

    :cond_149
    move-object v11, v10

    if-ne v6, v9, :cond_157

    const/4 v1, 0x0

    .line 408
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    const-string v2, "NextWakeupTime"

    .line 410
    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    :goto_154
    const/16 v1, 0x24

    goto :goto_15d

    :cond_157
    const/4 v1, 0x0

    .line 412
    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    goto :goto_15c

    :cond_15b
    :goto_15b
    move-object v11, v10

    :goto_15c
    const/4 v1, 0x0

    .line 416
    :goto_15d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentWakeupStep : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v16

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177

    :cond_174
    move-object v7, v8

    move-object v11, v10

    const/4 v1, 0x0

    .line 419
    :goto_177
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    if-eqz v2, :cond_2db

    .line 420
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    const-string v8, " , start wakeup : "

    const-string v9, " , sleep state, defaultWakeupTime : "

    const-string v10, "BedTime"

    if-eqz v2, :cond_234

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v3, -0xb4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v2, -0xb4

    if-gez v3, :cond_204

    add-int/lit16 v3, v2, 0x5a0

    add-int/lit16 v3, v3, -0xb4

    if-lt v6, v3, :cond_1d9

    const/16 v3, 0x5a0

    if-ge v6, v3, :cond_1d9

    const/4 v4, 0x0

    .line 424
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xb4

    sub-int/2addr v6, v2

    const/4 v3, 0x2

    .line 425
    div-int/2addr v6, v3

    :goto_1d4
    rsub-int/lit8 v2, v6, 0x59

    :cond_1d6
    :goto_1d6
    move v8, v2

    goto/16 :goto_2c6

    :cond_1d9
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ltz v6, :cond_1e8

    if-ge v6, v2, :cond_1e8

    .line 427
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v2, v6

    rsub-int v2, v2, 0xb4

    .line 428
    div-int/2addr v2, v3

    rsub-int/lit8 v2, v2, 0x59

    goto :goto_1d6

    :cond_1e8
    if-ne v6, v2, :cond_1fa

    const-string/jumbo v2, "reset blue_light_filter_data_reset"

    .line 430
    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_data_reset()V

    const/4 v2, 0x0

    .line 432
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 434
    invoke-virtual {v0, v10}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto :goto_1d6

    :cond_1fa
    const/4 v2, 0x0

    .line 436
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 437
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/16 v3, 0x24

    if-ge v2, v3, :cond_1d6

    goto :goto_232

    :cond_204
    add-int/lit16 v3, v2, -0xb4

    if-ltz v3, :cond_2c5

    add-int/lit16 v3, v2, -0xb4

    if-lt v6, v3, :cond_217

    if-ge v6, v2, :cond_217

    const/4 v3, 0x0

    .line 445
    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/lit16 v2, v2, -0xb4

    sub-int/2addr v6, v2

    const/4 v2, 0x2

    .line 446
    div-int/2addr v6, v2

    goto :goto_1d4

    :cond_217
    if-ne v6, v2, :cond_229

    const-string/jumbo v2, "reset blue_light_filter_data_reset"

    .line 448
    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_data_reset()V

    const/4 v2, 0x0

    .line 450
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 452
    invoke-virtual {v0, v10}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto :goto_1d6

    :cond_229
    const/4 v2, 0x0

    .line 454
    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 455
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/16 v3, 0x24

    if-ge v2, v3, :cond_1d6

    :goto_232
    goto/16 :goto_2c2

    :cond_234
    if-nez v2, :cond_2c5

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v3, -0xb4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v2, -0xb4

    if-gez v3, :cond_2a4

    add-int/lit16 v3, v2, 0x5a0

    add-int/lit16 v3, v3, -0xb4

    if-lt v6, v3, :cond_289

    const/16 v3, 0x5a0

    if-ge v6, v3, :cond_289

    const/4 v4, 0x0

    .line 466
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xb4

    sub-int/2addr v6, v2

    .line 467
    div-int/lit8 v6, v6, 0x5

    :goto_285
    rsub-int/lit8 v2, v6, 0x23

    goto/16 :goto_1d6

    :cond_289
    const/4 v4, 0x0

    if-ltz v6, :cond_299

    if-ge v6, v2, :cond_299

    .line 469
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    sub-int/2addr v2, v6

    rsub-int v2, v2, 0xb4

    .line 470
    div-int/lit8 v2, v2, 0x5

    rsub-int/lit8 v2, v2, 0x23

    goto/16 :goto_1d6

    :cond_299
    if-ne v6, v2, :cond_2a1

    .line 472
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 474
    invoke-virtual {v0, v10}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto :goto_2be

    .line 476
    :cond_2a1
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    goto :goto_2c2

    :cond_2a4
    const/4 v4, 0x0

    add-int/lit16 v3, v2, -0xb4

    if-ltz v3, :cond_2c5

    add-int/lit16 v3, v2, -0xb4

    if-lt v6, v3, :cond_2b7

    if-ge v6, v2, :cond_2b7

    .line 481
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    add-int/lit16 v2, v2, -0xb4

    sub-int/2addr v6, v2

    .line 482
    div-int/lit8 v6, v6, 0x5

    goto :goto_285

    :cond_2b7
    if-ne v6, v2, :cond_2c0

    .line 484
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 486
    invoke-virtual {v0, v10}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    :goto_2be
    move v8, v4

    goto :goto_2c6

    .line 488
    :cond_2c0
    iput-boolean v4, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    :goto_2c2
    const/16 v8, 0x24

    goto :goto_2c6

    :cond_2c5
    const/4 v8, 0x0

    .line 493
    :goto_2c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSleepStep : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2dc

    :cond_2db
    const/4 v8, 0x0

    .line 496
    :goto_2dc
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    const-string v3, "Change BLF step by mCurrentStateWakeup, BLF dayIndex : ["

    const-string v4, "]"

    if-eqz v2, :cond_31a

    .line 497
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v2, v1, :cond_3cb

    .line 498
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 499
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] , boprIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    .line 502
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    goto/16 :goto_3cb

    .line 505
    :cond_31a
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    if-eqz v1, :cond_3cb

    .line 506
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v1, :cond_37d

    .line 507
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_351

    const/16 v1, 0x24

    if-le v8, v1, :cond_32c

    goto :goto_32d

    :cond_32c
    move v1, v8

    .line 511
    :goto_32d
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 512
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change BLF step by mCurrentStateSleep_1, BLF totalIndex : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    move v8, v1

    .line 516
    :cond_351
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v1, v8, :cond_3cb

    .line 517
    iput v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 518
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    if-ge v8, v1, :cond_3cb

    .line 519
    iput v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change BLF step by mCurrentStateSleep_2, BLF totalIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    goto :goto_3cb

    :cond_37d
    if-nez v1, :cond_3cb

    .line 525
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v1, v8, :cond_3cb

    .line 526
    iput v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 527
    iput v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] , boprIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    .line 530
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    goto :goto_3cb

    :cond_3b4
    const/4 v1, -0x1

    .line 535
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    const/4 v1, 0x0

    .line 536
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 537
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 538
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-nez v2, :cond_3cb

    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz v2, :cond_3cb

    add-int v8, v1, v1

    .line 539
    iput v8, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 540
    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    :cond_3cb
    :goto_3cb
    return-void
.end method

.method public final bopr_for_bigdata_data_reset()V
    .registers 2

    const/4 v0, 0x0

    .line 586
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    .line 587
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    .line 588
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    .line 589
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    .line 590
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    .line 591
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    return-void
.end method

.method public final getBoprSensorValue(Z)V
    .registers 5

    if-eqz p1, :cond_15

    .line 809
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_22

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v0, :cond_22

    .line 810
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_22

    .line 813
    :cond_15
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_22

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v0, :cond_22

    .line 814
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public final getBoprSensorValueForBigData(Z)V
    .registers 5

    if-eqz p1, :cond_15

    .line 820
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_22

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v0, :cond_22

    .line 821
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_22

    .line 824
    :cond_15
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_22

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v0, :cond_22

    .line 825
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public final getSystemServices()V
    .registers 8

    .line 830
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSensorManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EyeComfortSolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_32

    const v2, 0x10033

    .line 834
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    .line 836
    :cond_32
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    if-nez v0, :cond_4f

    .line 837
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 838
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 839
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v5, p0

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    const-string p0, "Failure to register all of the services system."

    .line 840
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 842
    :cond_4f
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWorkingCondition:Z

    const-string p0, "Success to register all of the services system."

    .line 843
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method

.method public final getting_platform_brightness_value()F
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    .line 568
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPlatformBrightnessValue:F

    return v0
.end method

.method public isBlueLightFilterScheduledTime()Z
    .registers 3

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBlueLightFilterAdaptiveModeEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mBlueLightFilterScheduledTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EyeComfortSolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-nez v0, :cond_2c

    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method public final sendBigDatatoHQM()V
    .registers 14

    .line 857
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    const/16 v1, 0x3c

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    .line 858
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    .line 859
    :cond_9
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    if-gt v0, v1, :cond_f

    .line 860
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 862
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 864
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v3, :cond_68

    .line 865
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    if-nez v1, :cond_2f

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    if-eqz v1, :cond_65

    .line 866
    :cond_2f
    sget-object v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ECSS_KEYS:[Ljava/lang/String;

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->JsonParseData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x0

    const-string v5, "Display"

    const-string v6, "ECSS"

    const-string/jumbo v7, "sm"

    const-string v8, "0.0"

    const-string/jumbo v9, "sec"

    const-string v10, ""

    const-string v12, ""

    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BigDatatoHQM sendData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {p0, v1, v0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->JsonParseData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EyeComfortSolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_65
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_for_bigdata_data_reset()V

    :cond_68
    return-void
.end method

.method public setBlfEnableTimeBySchedule(ZI)V
    .registers 4

    .line 1096
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    .line 1097
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBlueLightFilterModeEnabledTime - mBlueLightFilterScheduledTime: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , index: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EyeComfortSolutionService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 p1, 0x7

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setBlueLightFilterMode(ZI)V
    .registers 14

    .line 546
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    if-eqz v0, :cond_97

    .line 547
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    const-string v1, " + 11] = "

    const-string v2, " , targetIndex : ["

    const-string v3, "BLF Adaptive Mode Enable : "

    const-wide v4, 0x40b7700000000000L    # 6000.0

    const-string v6, "EyeComfortSolutionService"

    if-eqz v0, :cond_3c

    const-wide v7, 0x403638e38e38e38eL    # 22.22222222222222

    int-to-double v9, p2

    mul-double/2addr v9, v7

    sub-double/2addr v4, v9

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_3c
    if-nez v0, :cond_64

    const-wide v7, 0x404bc71c71c71c72L    # 55.55555555555556

    int-to-double v9, p2

    mul-double/2addr v9, v7

    sub-double/2addr v4, v9

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    const-string v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMdnieManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_94

    add-int/lit8 v1, p2, 0xb

    .line 558
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeStep(I)Z

    .line 559
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    .line 561
    :cond_94
    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    :cond_97
    return-void
.end method

.method public setEyeComfortWeightingFactorValue(F)V
    .registers 2

    .line 573
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    return-void
.end method

.method public final setting_is_changed()V
    .registers 8

    .line 691
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 692
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "blue_light_filter"

    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 694
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_17

    move v3, v6

    goto :goto_18

    :cond_17
    move v3, v4

    :goto_18
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const-string v3, "blue_light_filter_night_dim"

    .line 695
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_24

    move v3, v6

    goto :goto_25

    :cond_24
    move v3, v4

    :goto_25
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    const-string v3, "blue_light_filter_adaptive_mode"

    .line 696
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_31

    move v3, v6

    goto :goto_32

    :cond_31
    move v3, v4

    :goto_32
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    const-string v3, "current_sec_active_themepackage"

    .line 697
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3e

    move v3, v6

    goto :goto_3f

    :cond_3e
    move v3, v4

    :goto_3f
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    const-string v3, "blue_light_filter_type"

    .line 698
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_4b

    move v0, v6

    goto :goto_4c

    :cond_4b
    move v0, v4

    :goto_4c
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBlueLightFilterModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mNightDimModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mBlueLightFilterAdaptiveModeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mDefaultThemeEnabled : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mBlueLightFilterCustomAlwaysOn : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EyeComfortSolutionService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const/4 v5, 0x2

    if-eqz v0, :cond_b6

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz v0, :cond_b6

    const-string v0, "All"

    .line 703
    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0, v6}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    .line 705
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v0, :cond_d2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    if-eqz v0, :cond_d2

    .line 706
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 707
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_d2

    .line 710
    :cond_b6
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    .line 711
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "reset blue_light_filter_data_reset"

    .line 714
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_data_reset()V

    .line 717
    :cond_d2
    :goto_d2
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateNightDimSettings(I)V

    return-void
.end method

.method public final updateNightDimSettings(I)V
    .registers 9

    .line 605
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 607
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7d

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    if-eqz v1, :cond_7d

    .line 608
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    const/16 v3, 0x4b

    const/16 v4, 0x20

    if-eqz v1, :cond_67

    .line 609
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    if-eqz v1, :cond_64

    if-nez p1, :cond_21

    .line 611
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto/16 :goto_7f

    :cond_21
    const/16 v1, 0xb

    if-lez p1, :cond_2c

    if-gt p1, v1, :cond_2c

    const/16 v1, 0x26

    .line 613
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    :cond_2c
    const/16 v4, 0x16

    if-le p1, v1, :cond_37

    if-gt p1, v4, :cond_37

    const/16 v1, 0x2c

    .line 615
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    :cond_37
    const/16 v1, 0x22

    if-le p1, v4, :cond_42

    if-gt p1, v1, :cond_42

    const/16 v1, 0x32

    .line 617
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    :cond_42
    const/16 v4, 0x2d

    const/16 v5, 0x38

    if-le p1, v1, :cond_4d

    if-gt p1, v4, :cond_4d

    .line 619
    iput v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    :cond_4d
    if-le p1, v4, :cond_56

    if-gt p1, v5, :cond_56

    const/16 v1, 0x3e

    .line 621
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    :cond_56
    const/16 v1, 0x44

    if-le p1, v5, :cond_5f

    if-gt p1, v1, :cond_5f

    .line 623
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    :cond_5f
    if-le p1, v1, :cond_7f

    .line 625
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    .line 628
    :cond_64
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    .line 631
    :cond_67
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    if-nez v1, :cond_73

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    if-eqz v1, :cond_70

    goto :goto_73

    .line 638
    :cond_70
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    .line 632
    :cond_73
    :goto_73
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mDefaultThemeEnabled:Z

    if-eqz v1, :cond_7a

    .line 633
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    .line 635
    :cond_7a
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    goto :goto_7f

    .line 642
    :cond_7d
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    .line 644
    :cond_7f
    :goto_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNightDimSettings index : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mNightDimFontConfigValue : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EyeComfortSolutionService"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    if-eq v1, v4, :cond_ed

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConfiguration ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") -> ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValue:I

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimFontConfigValuePrev:I

    const/4 v4, -0x2

    const-string v5, "enhanced_comfort_font_value"

    .line 648
    invoke-static {v0, v5, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 649
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 650
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/app/IActivityManager;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 661
    :cond_ed
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-eqz v0, :cond_174

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mNightDimModeEnabled:Z

    if-eqz v0, :cond_174

    .line 662
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    const-string v1, "NIGHT_DIM Mode : 0 (CLUT Off index)"

    const-string v4, "NIGHT_DIM Mode : 1 (CLUT On)"

    const/4 v5, 0x1

    if-eqz v0, :cond_136

    if-nez p1, :cond_11b

    .line 664
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 665
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_117

    .line 666
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 667
    :cond_117
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_174

    .line 669
    :cond_11b
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 670
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_132

    .line 671
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 672
    :cond_132
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_174

    .line 675
    :cond_136
    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledTime:Z

    if-nez p1, :cond_15a

    iget-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterCustomAlwaysOn:Z

    if-eqz p1, :cond_13f

    goto :goto_15a

    .line 681
    :cond_13f
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 682
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_156

    .line 683
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 684
    :cond_156
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_174

    .line 676
    :cond_15a
    :goto_15a
    iget-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_NODE:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 677
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_171

    .line 678
    iget-object p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_DIM_MODE_SUB_NODE:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sysfsWrite(Ljava/lang/String;I)Z

    .line 679
    :cond_171
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_174
    :goto_174
    return-void
.end method

.method public updateRubinSleepPattern(Ljava/lang/String;JJF)V
    .registers 14

    const-string v0, "SUNDAY"

    .line 888
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " , WakeupTime : "

    const-string v2, ") , BedTime : "

    const-string v3, "EyeComfortSolutionService"

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0xea60

    const/4 v6, -0x1

    if-eqz v0, :cond_4b

    cmpl-float p1, p6, v4

    if-lez p1, :cond_21

    long-to-int p1, p2

    .line 890
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    long-to-int p1, p4

    .line 891
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    goto :goto_25

    .line 893
    :cond_21
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 894
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 896
    :goto_25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SUNDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    :cond_4b
    const-string v0, "MONDAY"

    .line 897
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    cmpl-float p1, p6, v4

    if-lez p1, :cond_60

    long-to-int p1, p2

    .line 899
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    long-to-int p1, p4

    .line 900
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    goto :goto_64

    .line 902
    :cond_60
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 903
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 905
    :goto_64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MONDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    :cond_8a
    const-string v0, "TUESDAY"

    .line 906
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    cmpl-float p1, p6, v4

    if-lez p1, :cond_9f

    long-to-int p1, p2

    .line 908
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    long-to-int p1, p4

    .line 909
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    goto :goto_a3

    .line 911
    :cond_9f
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 912
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 914
    :goto_a3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TUESDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    :cond_c9
    const-string v0, "WEDNESDAY"

    .line 915
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    cmpl-float p1, p6, v4

    if-lez p1, :cond_de

    long-to-int p1, p2

    .line 917
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    long-to-int p1, p4

    .line 918
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    goto :goto_e2

    .line 920
    :cond_de
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 921
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 923
    :goto_e2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "WEDNESDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    :cond_108
    const-string v0, "THURSDAY"

    .line 924
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    cmpl-float p1, p6, v4

    if-lez p1, :cond_11d

    long-to-int p1, p2

    .line 926
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    long-to-int p1, p4

    .line 927
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    goto :goto_121

    .line 929
    :cond_11d
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 930
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 932
    :goto_121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "THURSDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    :cond_147
    const-string v0, "FRIDAY"

    .line 933
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    cmpl-float p1, p6, v4

    if-lez p1, :cond_15c

    long-to-int p1, p2

    .line 935
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    long-to-int p1, p4

    .line 936
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    goto :goto_160

    .line 938
    :cond_15c
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 939
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 941
    :goto_160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FRIDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c2

    :cond_185
    const-string v0, "SATURDAY"

    .line 942
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c2

    cmpl-float p1, p6, v4

    if-lez p1, :cond_19a

    long-to-int p1, p2

    .line 944
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    long-to-int p1, p4

    .line 945
    div-int/2addr p1, v5

    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    goto :goto_19e

    .line 947
    :cond_19a
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 948
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 950
    :goto_19e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SATURDAY("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c2
    :goto_1c2
    return-void
.end method

.method public final updateSleepWakeupTime(Ljava/lang/String;)V
    .registers 14

    const-string v0, "currentRubinState"

    const-string v1, "isDeviceRubinSupported"

    const-string v2, "EyeComfortSolutionService"

    .line 955
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "HH"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 956
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "mm"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 957
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 958
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 959
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 963
    :try_start_36
    iget-object v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://com.samsung.android.rubin.state"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "getRubinState"

    const-string v8, "com.samsung.android.bluelightfilter"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_c1

    .line 965
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_57} :catch_c1

    if-eqz v6, :cond_72

    .line 967
    :try_start_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "D-Runestone isDeviceRubinSupported : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_71} :catch_c2

    goto :goto_ac

    :cond_72
    :try_start_72
    const-string v1, "OK"

    .line 969
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7c} :catch_c1

    const-string v6, "isEnabledInSupportedApps"

    if-eqz v1, :cond_87

    :try_start_80
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_84} :catch_c1

    if-eqz v1, :cond_87

    goto :goto_88

    :cond_87
    move v3, v4

    .line 970
    :goto_88
    :try_start_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "O-Runestone currentRubinState : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , isEnabledInSupportedApps : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :goto_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRubinDataValid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_c0} :catch_c2

    goto :goto_c2

    :catch_c1
    :cond_c1
    move v3, v4

    .line 979
    :catch_c2
    :goto_c2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "EE"

    invoke-direct {v0, v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "Sun"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "NextWakeupTime"

    const-string v7, "WakeupTime"

    const-string v8, "BedTime"

    const/16 v9, 0x168

    const/4 v10, -0x1

    if-eqz v0, :cond_123

    .line 980
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    if-eq v0, v10, :cond_11d

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    if-eq v0, v10, :cond_11d

    if-eqz v3, :cond_11d

    .line 981
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 982
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_312

    .line 983
    :cond_fb
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 984
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 985
    :cond_107
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 986
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 988
    :cond_113
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 989
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 992
    :cond_11d
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 993
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 995
    :cond_123
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Mon"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 996
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    if-eq v0, v10, :cond_171

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    if-eq v0, v10, :cond_171

    if-eqz v3, :cond_171

    .line 997
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 998
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_312

    .line 999
    :cond_14f
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 1000
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1001
    :cond_15b
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 1002
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1004
    :cond_167
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1005
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1008
    :cond_171
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1009
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1011
    :cond_177
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Tue"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 1012
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    if-eq v0, v10, :cond_1c5

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    if-eq v0, v10, :cond_1c5

    if-eqz v3, :cond_1c5

    .line 1013
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 1014
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_312

    .line 1015
    :cond_1a3
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 1016
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1017
    :cond_1af
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 1018
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1020
    :cond_1bb
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1021
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1024
    :cond_1c5
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1025
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1027
    :cond_1cb
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Wed"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 1028
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    if-eq v0, v10, :cond_219

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    if-eq v0, v10, :cond_219

    if-eqz v3, :cond_219

    .line 1029
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 1030
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_312

    .line 1031
    :cond_1f7
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_203

    .line 1032
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1033
    :cond_203
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 1034
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1036
    :cond_20f
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1037
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1040
    :cond_219
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1041
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1043
    :cond_21f
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Thu"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_273

    .line 1044
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    if-eq v0, v10, :cond_26d

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    if-eq v0, v10, :cond_26d

    if-eqz v3, :cond_26d

    .line 1045
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24b

    .line 1046
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_312

    .line 1047
    :cond_24b
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_257

    .line 1048
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1049
    :cond_257
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_263

    .line 1050
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1052
    :cond_263
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1053
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1056
    :cond_26d
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1057
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1059
    :cond_273
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Fri"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c4

    .line 1060
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    if-eq v0, v10, :cond_2bf

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    if-eq v0, v10, :cond_2bf

    if-eqz v3, :cond_2bf

    .line 1061
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29f

    .line 1062
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_312

    .line 1063
    :cond_29f
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 1064
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_312

    .line 1065
    :cond_2ab
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b6

    .line 1066
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_312

    .line 1068
    :cond_2b6
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1069
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_312

    .line 1072
    :cond_2bf
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1073
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_312

    .line 1075
    :cond_2c4
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_312

    .line 1076
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    if-eq v0, v10, :cond_30e

    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    if-eq v0, v10, :cond_30e

    if-eqz v3, :cond_30e

    .line 1077
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ef

    .line 1078
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto :goto_312

    .line 1079
    :cond_2ef
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fa

    .line 1080
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_312

    .line 1081
    :cond_2fa
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_305

    .line 1082
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_312

    .line 1084
    :cond_305
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1085
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_312

    .line 1088
    :cond_30e
    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 1089
    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 1092
    :cond_312
    :goto_312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSleepWakeupTime. type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , defaultBedTime : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , defaultWakeupTime : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
