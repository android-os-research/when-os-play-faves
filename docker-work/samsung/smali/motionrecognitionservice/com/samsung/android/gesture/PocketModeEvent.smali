.class public Lcom/samsung/android/gesture/PocketModeEvent;
.super Ljava/lang/Object;
.source "PocketModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;,
        Lcom/samsung/android/gesture/PocketModeEvent$AodSettingObserver;,
        Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;,
        Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;,
        Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;
    }
.end annotation


# static fields
.field private static final ACC_YDATA_THD:D = -6.5

.field public static final AOD_MODE_CUSTOM_TIME:I = 0x3

.field public static final AOD_MODE_OFF:I = 0x0

.field public static final AOD_MODE_SHOW_ALWAYS:I = 0x1

.field public static final AOD_MODE_TAP_TO_SHOW:I = 0x2

.field public static AOD_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final INJECT_EL_OFF:F = 100.0f

.field private static final INJECT_EL_ON:F = 101.0f

.field private static final INJECT_POCEKT_FLAG_DISABLE:I = 0x30047c1

.field private static final INJECT_POCEKT_FLAG_ENABLE:I = 0x20047c1

.field private static final INTENT_ACTION_FACE_UNLOCK:Ljava/lang/String; = "com.samsung.keyguard.FACE_UNLOCK_STATE"

.field private static final INTENT_BIXBY_UPDATED:Ljava/lang/String; = "com.samsung.android.bixby.intent.action.POCKET_MODE_CHECK"

.field private static final INTENT_EDGE_LIGHTING_REMOVE:Ljava/lang/String; = "com.android.systemui.edgelighting.stop"

.field private static final INTENT_EDGE_LIGHTING_SHOW:Ljava/lang/String; = "com.android.systemui.edgelighting.start"

.field private static final INTENT_KSO_CLICK_OK:Ljava/lang/String; = "com.samsung.intent.action.KSO_CLICK_OK"

.field private static final INTENT_KSO_IRIS_LED_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_LED_OFF"

.field private static final INTENT_KSO_IRIS_LED_ON:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_LED_ON"

.field private static final INTENT_KSO_REMOVE_POPUP:Ljava/lang/String; = "com.samsung.intent.action.KSO_CLOSE_POPUP"

.field private static final INTENT_KSO_REMOVE_POPUP_SUB:Ljava/lang/String; = "com.samsung.intent.action.KSO_CLOSE_POPUP_SUB"

.field private static final INTENT_KSO_SHOW_POPUP:Ljava/lang/String; = "com.samsung.intent.action.KSO_SHOW_POPUP"

.field private static final INTENT_KSO_SHOW_POPUP_SUB:Ljava/lang/String; = "com.samsung.intent.action.KSO_SHOW_POPUP_SUB"

.field private static final INTENT_RECOG_POCKET_MODE:Ljava/lang/String; = "com.samsung.intent.action.RECOG_POCKET_MODE"

.field private static final INTENT_RELEASE_POCKET_MODE:Ljava/lang/String; = "com.samsung.intent.action.RELEASE_POCKET_MODE"

.field private static final INTENT_SCREEN_OFF_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

.field private static final INTENT_SCREEN_ON_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

.field private static final IRIS_CHECK_TIME:I = 0x7d0

.field private static final LIGHT_SENSOR_MONITORING_TIME:J = 0x64L

.field private static final LIGHT_SENSOR_WAIT_TIME:I = 0x1f4

.field private static final LUMI_REDZONE_THD:I = 0xd7

.field public static final MIN_LIGHT_POCKET_OUT:I = 0x5

.field public static final MIN_LIGHT_POCKET_OUT_FOR_MOTION:I = 0x14

.field private static final MIN_LIGHT_POCKET_OUT_FOR_REDZONE:I = 0x1f4

.field public static final MIN_LIGHT_POCKET_OUT_FOR_UNDERDISPLAY:I = 0xa

.field public static final MSG_TYPE_CLICK_POPUP_OK:I = 0x3

.field public static final MSG_TYPE_DISABLE_INSENSITIVE_MODE:I = 0x12

.field public static final MSG_TYPE_DISABLE_TIMEOUT_DELAY_INVALID:I = 0x14

.field public static final MSG_TYPE_ENABLE_INSENSITIVE_MODE:I = 0x11

.field public static final MSG_TYPE_ENABLE_TIMEOUT_DELAY_INVALID:I = 0x13

.field public static final MSG_TYPE_HOVER_RECHECK_DISABLE:I = 0xa

.field public static final MSG_TYPE_PHYSICAL_PROX_DISABLE:I = 0xb

.field public static final MSG_TYPE_POCKET_RECOGNITION_TIMEOUT:I = 0x6

.field public static final MSG_TYPE_RECOG_POCKET_MODE:I = 0xd

.field public static final MSG_TYPE_REGISTER_POCKET_POSITION_SENSOR:I = 0xf

.field public static final MSG_TYPE_REGISTER_POCKET_SENSOR:I = 0x8

.field public static final MSG_TYPE_RELEASE_POCKET_MODE:I = 0xe

.field public static final MSG_TYPE_REMOVE_POPUP:I = 0x4

.field public static final MSG_TYPE_SHOW_POPUP:I = 0x2

.field public static final MSG_TYPE_START_EDGE_LIGHTING:I = 0x15

.field public static final MSG_TYPE_START_SENSING:I = 0x1

.field public static final MSG_TYPE_STOP_EDGE_LIGHTING:I = 0x16

.field public static final MSG_TYPE_STOP_SENSING:I = 0x5

.field public static final MSG_TYPE_SUBDISPLAY_RECHECK_DISABLE:I = 0x9

.field public static final MSG_TYPE_UNREGISTER_LIGHT_SENSOR:I = 0xc

.field public static final MSG_TYPE_UNREGISTER_POCKET_POSITION_SENSOR:I = 0x10

.field public static final MSG_TYPE_UNREGISTER_POCKET_SENSOR:I = 0x7

.field private static final POCKET_FEATURE:Ljava/lang/String; = "com.sec.feature.pocketmode"

.field private static final POCKET_POSITION_FEATURE:Ljava/lang/String; = "com.sec.feature.pocketsensitivitymode"

.field private static final POCKET_TOUCH_RECHECK_TIME:J = 0x4e20L

.field public static final POPUP_RELEASE_REASON_DRAG_BY_USER:I = 0x5

.field public static final POPUP_RELEASE_REASON_LIGHT_CONDITION:I = 0x2

.field public static final POPUP_RELEASE_REASON_NONE:I = 0x0

.field public static final POPUP_RELEASE_REASON_PROXY_CONDITION:I = 0x3

.field public static final POPUP_RELEASE_REASON_SCREEN_TIMEOUT:I = 0x1

.field public static final POPUP_RELEASE_REASON_TILT_CONDITION:I = 0x4

.field public static final SENSOR_TYPE_LIGHT:I = 0x0

.field public static final SENSOR_TYPE_LIGHT_CAMERA:I = 0x2

.field public static final SENSOR_TYPE_LIGHT_CCT:I = 0x1

.field private static final STATE_NOT_POCKET:I = 0x1

.field private static final STATE_POCKET_RECOG:I = 0x2

.field private static final STATE_POCKET_TOUCH:I = 0x3

.field private static final STATE_SHOW_POPUP:I = 0x4

.field private static final STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final THD_LIGHT_BASE:I = 0x32

.field public static final THD_LIGHT_POCKET_OUT_FOR_ACC_AT:I = 0x32

.field private static final TIME_1_SEC_COUNT:I = 0x3e8

.field private static final TIME_500_MS_COUNT:I = 0x1f4

.field private static final TYPE_SENSORHUB:I = 0x10032

.field public static final VER:D = 5.5

.field private static final VER_LOG:Ljava/lang/String; = "h"

.field private static elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE; = null

.field public static isPopUpShowing:Z = false

.field public static isTimeoutDelayInvalidEnabled:Z = false

.field private static mDebug:Z = false

.field public static mFeatureLevel:I = 0x0

.field private static mInstance:Lcom/samsung/android/gesture/PocketModeEvent; = null

.field public static mIsPocketOutSubDisp:Z = false

.field private static mLuxBase:I = 0x0

.field private static final mPocketLock:Ljava/lang/Object;

.field public static mPopupReleaseReason:I = 0x0

.field public static mSensitivityFeatureLevel:I = 0x0

.field public static mSensorPocketInState:I = 0x0

.field private static pbdm:Lcom/samsung/android/gesture/PocketBigDataManager; = null

.field private static pdm:Lcom/samsung/android/gesture/PocketDeviceManager; = null

.field private static plm:Lcom/samsung/android/gesture/PocketLogManager; = null

.field private static pmm:Lcom/samsung/android/gesture/PocketMotionManager; = null

.field public static pocketPosState:Z = false

.field private static pocketState:Z = false

.field private static ppm:Lcom/samsung/android/gesture/PocketProximityManager; = null

.field public static final proxyClose:I = 0x2

.field private static psm:Lcom/samsung/android/gesture/PocketSensitivityManager;


# instance fields
.field private batteryTemp:I

.field private currentState:I

.field public inputLidEventListenerForDualFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

.field public inputLidEventListenerForFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

.field public inputLidEventListenerForFolder:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

.field private final intentReceiver:Landroid/content/BroadcastReceiver;

.field private irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

.field private isRunning:Z

.field private final lightDark:I

.field private lightReCheckCnt:I

.field private lightTotalCnt:I

.field private mAodShowState:Z

.field private final mContext:Landroid/content/Context;

.field public mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIrisLedOffTime:J

.field private mIsAvailableTiltUse:Z

.field private mIsDualDisplayFolder:Z

.field private mIsInitalized:Z

.field private mIsOccurTouch:Z

.field private mIsPocketOutHover:Z

.field private mIsSettingEnabled:Z

.field private mIsSettingEnabledPrev:Z

.field private mIsWriteLuxLog:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorType:I

.field private final mLockProxInt:Ljava/lang/Object;

.field private mLuminance:I

.field private mLux:I

.field private mLuxDump:I

.field private mLuxLightSensoValue:I

.field private mLuxOutDump:I

.field private mLuxSysfs:I

.field private mPhysicalProxUseFlag:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSendRecogPocketInt:Z

.field private mSendReleasePocketInt:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRegisterTime:J

.field private mShowOverlayTime:J

.field private mWakeUpReason:I

.field private mWriteDumpTime:J

.field public sensorLightEventListener:Landroid/hardware/SensorEventListener;

.field public sensorLightEventSubDisplayListener:Landroid/hardware/SensorEventListener;

.field private sysfsCnt:I

.field private sysfsProx:I

.field private final touchCheck:I

.field private validLightCnt:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbatteryTemp(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->batteryTemp:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetirisState(Lcom/samsung/android/gesture/PocketModeEvent;)Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisRunning(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlightReCheckCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightReCheckCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlightTotalCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDualDisplayFolder(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsDualDisplayFolder:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInitalized(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsInitalized:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSettingEnabled(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSettingEnabledPrev(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabledPrev:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockProxInt(Lcom/samsung/android/gesture/PocketModeEvent;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLockProxInt:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuminance:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLuxDump(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxDump:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLuxOutDump(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxOutDump:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLuxSysfs(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxSysfs:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhysicalProxUseFlag(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mPhysicalProxUseFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorRegisterTime(Lcom/samsung/android/gesture/PocketModeEvent;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mShowOverlayTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWriteDumpTime(Lcom/samsung/android/gesture/PocketModeEvent;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWriteDumpTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetsysfsCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsProx:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidLightCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbatteryTemp(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->batteryTemp:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentState(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputirisState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlightReCheckCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightReCheckCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlightTotalCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIrisLedOffTime(Lcom/samsung/android/gesture/PocketModeEvent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIrisLedOffTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAvailableTiltUse(Lcom/samsung/android/gesture/PocketModeEvent;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsAvailableTiltUse:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsOccurTouch(Lcom/samsung/android/gesture/PocketModeEvent;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsOccurTouch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPocketOutHover(Lcom/samsung/android/gesture/PocketModeEvent;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutHover:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLuxLightSensoValue(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxLightSensoValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLuxSysfs(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxSysfs:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPhysicalProxUseFlag(Lcom/samsung/android/gesture/PocketModeEvent;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mPhysicalProxUseFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWriteDumpTime(Lcom/samsung/android/gesture/PocketModeEvent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWriteDumpTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsysfsCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsysfsProx(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsProx:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvalidLightCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/PocketModeEvent;->changeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAutoBrightnessSetting(Lcom/samsung/android/gesture/PocketModeEvent;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkAutoBrightnessSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIrisState(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkIrisState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLIDState(Lcom/samsung/android/gesture/PocketModeEvent;)I
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFlipFolded(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isFlipFolded()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misInPocket(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isInPocket()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misOutPocket(Lcom/samsung/android/gesture/PocketModeEvent;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isOutPocket()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopVirtualPocketOperation(Lcom/samsung/android/gesture/PocketModeEvent;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/PocketModeEvent;->stopVirtualPocketOperation(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetelState()Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpmm()Lcom/samsung/android/gesture/PocketMotionManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 71
    const-class v0, Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    .line 147
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isTimeoutDelayInvalidEnabled:Z

    .line 149
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->NONE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    .line 153
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    .line 161
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mDebug:Z

    .line 164
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->pocketState:Z

    .line 165
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->pocketPosState:Z

    .line 176
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 179
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxBase:I

    .line 187
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 188
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    .line 189
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    .line 194
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->mPocketLock:Ljava/lang/Object;

    .line 218
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    .line 238
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 239
    sput-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 240
    sput-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    .line 241
    sput-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 242
    sput-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 243
    sput-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "OFF"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHOW_ALWAYS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAP_TO_SHOW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CUSTOM_TIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightDark:I

    .line 132
    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->touchCheck:I

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    .line 145
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabledPrev:Z

    .line 148
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    .line 150
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsInitalized:Z

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutHover:Z

    .line 155
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsDualDisplayFolder:Z

    .line 156
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsWriteLuxLog:Z

    .line 157
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mPhysicalProxUseFlag:Z

    .line 158
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsAvailableTiltUse:Z

    .line 159
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mAodShowState:Z

    .line 160
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsOccurTouch:Z

    .line 162
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendRecogPocketInt:Z

    .line 163
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    .line 168
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    .line 169
    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIrisLedOffTime:J

    .line 170
    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWriteDumpTime:J

    .line 173
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    .line 174
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    .line 175
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightReCheckCnt:I

    .line 181
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxOutDump:I

    .line 185
    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensorType:I

    .line 193
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLockProxInt:Ljava/lang/Object;

    .line 800
    new-instance v3, Lcom/samsung/android/gesture/PocketModeEvent$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/PocketModeEvent$2;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    .line 1038
    new-instance v3, Lcom/samsung/android/gesture/PocketModeEvent$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/PocketModeEvent$3;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventSubDisplayListener:Landroid/hardware/SensorEventListener;

    .line 1077
    new-instance v3, Lcom/samsung/android/gesture/PocketModeEvent$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/PocketModeEvent$4;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    .line 1098
    new-instance v3, Lcom/samsung/android/gesture/PocketModeEvent$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/PocketModeEvent$5;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForDualFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    .line 1122
    new-instance v3, Lcom/samsung/android/gesture/PocketModeEvent$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/PocketModeEvent$6;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForFolder:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    .line 1145
    new-instance v3, Lcom/samsung/android/gesture/PocketModeEvent$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/gesture/PocketModeEvent$7;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1918
    new-instance v5, Lcom/samsung/android/gesture/PocketModeEvent$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/gesture/PocketModeEvent$8;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;)V

    iput-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    .line 263
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "sensorThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 264
    .local v3, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 265
    new-instance v4, Lcom/samsung/android/gesture/PocketModeEvent$1;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/samsung/android/gesture/PocketModeEvent$1;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    .line 492
    invoke-static {}, Lcom/samsung/android/gesture/PocketLogManager;->getInstance()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    .line 493
    if-nez v4, :cond_9b

    .line 494
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketLogManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void

    .line 497
    :cond_9b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/high16 v7, 0x4016000000000000L    # 5.5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v0, v1

    const-string v7, "%.1f"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "h"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/gesture/PocketLogManager;->setVersion(Ljava/lang/String;)V

    .line 500
    invoke-static {}, Lcom/samsung/android/gesture/PocketBigDataManager;->getInstance()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    .line 501
    if-nez v0, :cond_d1

    .line 502
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketBigDataManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void

    .line 507
    :cond_d1
    invoke-static {}, Lcom/samsung/android/gesture/PocketDeviceManager;->getInstance()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    .line 508
    if-nez v0, :cond_e1

    .line 509
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketDeviceManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-void

    .line 512
    :cond_e1
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->setHandler(Landroid/os/Handler;)V

    .line 513
    invoke-static {p1}, Lcom/samsung/android/gesture/PocketDeviceManager;->setContext(Landroid/content/Context;)V

    .line 514
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->initialize()V

    .line 518
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->getInstance()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 519
    if-nez v0, :cond_fe

    .line 520
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get instance of PocketProximityManager"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void

    .line 523
    :cond_fe
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setHandler(Landroid/os/Handler;)V

    .line 524
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->initialize()V

    .line 528
    invoke-static {}, Lcom/samsung/android/gesture/PocketMotionManager;->getInstance()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    .line 529
    const-string v4, "Fail to get instance of PocketMotionManager"

    if-nez v0, :cond_118

    .line 530
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void

    .line 533
    :cond_118
    invoke-static {p1}, Lcom/samsung/android/gesture/PocketMotionManager;->setContext(Landroid/content/Context;)V

    .line 537
    invoke-static {}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getInstance()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    .line 538
    if-nez v0, :cond_129

    .line 539
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-void

    .line 542
    :cond_129
    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->initialize()V

    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 547
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v4, "com.samsung.intent.action.KSO_CLICK_OK"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v4, "com.samsung.android.intent.action.IRIS_LED_ON"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v4, "com.samsung.android.intent.action.IRIS_LED_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v4, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v4, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v4, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v4, "com.samsung.android.bixby.intent.action.POCKET_MODE_CHECK"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v4, "com.samsung.keyguard.FACE_UNLOCK_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string v4, "com.android.systemui.edgelighting.start"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v4, "com.android.systemui.edgelighting.stop"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mResolver:Landroid/content/ContentResolver;

    .line 566
    new-instance v4, Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;

    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Handler;)V

    .line 567
    .local v4, "mPocketModeSettingObserver":Lcom/samsung/android/gesture/PocketModeEvent$PocketModeSettingObserver;
    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "screen_off_pocket"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 569
    new-instance v5, Lcom/samsung/android/gesture/PocketModeEvent$AodSettingObserver;

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/gesture/PocketModeEvent$AodSettingObserver;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Handler;)V

    .line 570
    .local v5, "mAodSettingObserver":Lcom/samsung/android/gesture/PocketModeEvent$AodSettingObserver;
    iget-object v6, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "aod_show_state"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 572
    new-instance v6, Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;

    iget-object v7, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;-><init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Handler;)V

    .line 573
    .local v6, "mAutoBrightObserver":Lcom/samsung/android/gesture/PocketModeEvent$AutoBrightnessSettingObserver;
    iget-object v7, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "screen_brightness_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 575
    return-void
.end method

.method private changeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V
    .registers 5
    .param p1, "state"    # Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    .line 1034
    sput-object p1, Lcom/samsung/android/gesture/PocketModeEvent;->elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    .line 1035
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EL_STATE is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    return-void
.end method

.method private checkAutoBrightnessSetting()V
    .registers 6

    .line 1257
    const/4 v0, 0x0

    .line 1258
    .local v0, "autoBrightnessSetting":Z
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v3, 0x1

    :cond_12
    move v0, v3

    .line 1259
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoBrightnessSetting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/PocketLogManager;->setAutoBrightnessEnabled(Z)V

    .line 1261
    return-void
.end method

.method private checkIrisState()Z
    .registers 8

    .line 1016
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_22

    .line 1017
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIrisLedOn, MLux is : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    return v2

    .line 1019
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_OFF:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    if-ne v0, v1, :cond_67

    .line 1020
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIrisLedOffTime:J

    sub-long/2addr v0, v3

    .line 1021
    .local v0, "irisDelayTime":J
    const-wide/16 v3, 0x7d0

    cmp-long v5, v0, v3

    if-gez v5, :cond_5f

    iget v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5f

    .line 1022
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MLux : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", IrisDelayTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    return v2

    .line 1026
    :cond_5f
    cmp-long v2, v0, v3

    if-ltz v2, :cond_67

    .line 1027
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    .line 1030
    .end local v0    # "irisDelayTime":J
    :cond_67
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/gesture/PocketModeEvent;

    monitor-enter v0

    .line 674
    :try_start_3
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->mInstance:Lcom/samsung/android/gesture/PocketModeEvent;

    if-nez v1, :cond_e

    .line 675
    new-instance v1, Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/PocketModeEvent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->mInstance:Lcom/samsung/android/gesture/PocketModeEvent;

    .line 678
    :cond_e
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PocketModeEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->mInstance:Lcom/samsung/android/gesture/PocketModeEvent;

    if-eqz v3, :cond_22

    const-string v3, "enabled"

    goto :goto_24

    :cond_22
    const-string v3, "disabled"

    :goto_24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_31

    .line 679
    monitor-exit v0

    return-void

    .line 673
    .end local p0    # "context":Landroid/content/Context;
    :catchall_31
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 2087
    :try_start_0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/gesture/PocketLogManager;->dumpData(Ljava/io/PrintWriter;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 2090
    goto :goto_e

    .line 2088
    :catch_6
    move-exception v0

    .line 2089
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "DUMP_EXCEPTION"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method private getLIDState()I
    .registers 3

    .line 2044
    const/4 v0, -0x1

    .line 2045
    .local v0, "isFolderClosed":I
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v1, :cond_9

    .line 2046
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->semGetLidState()I

    move-result v0

    .line 2049
    :cond_9
    return v0
.end method

.method public static getLightThreshold()I
    .registers 8

    .line 1791
    const/4 v0, 0x5

    .line 1792
    .local v0, "light_limit":I
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketMotionManager;->getAccYData()D

    move-result-wide v1

    .line 1793
    .local v1, "accY":D
    const/4 v3, 0x0

    .line 1795
    .local v3, "luxBaseLimit":I
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v4

    const/16 v5, 0x21

    if-ne v4, v5, :cond_14

    .line 1796
    sget v3, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxBase:I

    .line 1798
    :cond_14
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_44

    sget-boolean v4, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    if-nez v4, :cond_44

    .line 1799
    add-int/lit8 v0, v3, 0xa

    .line 1801
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_44

    .line 1802
    const-wide/high16 v6, -0x3fe6000000000000L    # -6.5

    cmpg-double v4, v1, v6

    if-lez v4, :cond_3a

    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketMotionManager;->getATStatus()I

    move-result v4

    if-ne v4, v5, :cond_44

    :cond_3a
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v4

    if-ne v4, v5, :cond_44

    .line 1803
    add-int/lit8 v0, v3, 0x14

    .line 1807
    :cond_44
    return v0
.end method

.method private isExceptionCase()Z
    .registers 5

    .line 1861
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1862
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Cover is closed now"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    return v1

    .line 1866
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isNotUsedPocketModeInFoldable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1867
    return v1

    .line 1870
    :cond_18
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    sparse-switch v0, :sswitch_data_3a

    .line 1881
    const/4 v0, 0x0

    return v0

    .line 1876
    :sswitch_1f
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not run by WakeUpReason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    return v1

    :sswitch_data_3a
    .sparse-switch
        0x9 -> :sswitch_1f
        0x67 -> :sswitch_1f
        0x6d -> :sswitch_1f
    .end sparse-switch
.end method

.method private isFlipDevice()Z
    .registers 3

    .line 1897
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x137

    if-eq v0, v1, :cond_d

    const/16 v1, 0x138

    if-ne v0, v1, :cond_b

    goto :goto_d

    .line 1900
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 1898
    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method private isFlipFolded()Z
    .registers 3

    .line 1912
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x138

    if-eq v0, v1, :cond_a

    const/16 v1, 0x14c

    if-ne v0, v1, :cond_12

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1913
    return v1

    .line 1915
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private isFoldFolded()Z
    .registers 3

    .line 1905
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v1, 0x14b

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 1906
    return v1

    .line 1908
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private isInPocket()Z
    .registers 12

    .line 1702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1703
    .local v0, "curTime":J
    iget-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    sub-long v2, v0, v2

    .line 1705
    .local v2, "diff":J
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x5

    if-ne v4, v9, :cond_39

    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    if-eq v4, v8, :cond_39

    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    if-ne v4, v8, :cond_29

    sget-boolean v4, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-eq v4, v6, :cond_39

    :cond_29
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1706
    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    if-ne v4, v8, :cond_47

    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    if-ne v4, v5, :cond_47

    .line 1707
    :cond_39
    const-wide/16 v9, 0x64

    cmp-long v4, v2, v9

    if-gez v4, :cond_40

    .line 1708
    return v7

    .line 1711
    :cond_40
    iget v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    iget v9, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    if-eq v4, v9, :cond_47

    .line 1713
    return v7

    .line 1716
    :cond_47
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v4

    if-ne v4, v5, :cond_58

    .line 1717
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_56

    goto :goto_57

    :cond_56
    move v6, v7

    :goto_57
    return v6

    .line 1719
    :cond_58
    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    if-ne v4, v8, :cond_5d

    goto :goto_5e

    :cond_5d
    move v6, v7

    :goto_5e
    return v6
.end method

.method private isNotUsedPocketModeInFoldable()Z
    .registers 4

    .line 1885
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isFlipDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    if-ne v0, v1, :cond_15

    .line 1886
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Do not run by closing flip... "

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    return v1

    .line 1888
    :cond_15
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v2, 0x14b

    if-ne v0, v2, :cond_29

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    if-nez v0, :cond_29

    .line 1889
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Do not run by opening folder... "

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    return v1

    .line 1892
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method private isOutPocket()Z
    .registers 18

    .line 1724
    move-object/from16 v0, p0

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->getLightThreshold()I

    move-result v1

    .line 1725
    .local v1, "light_limit":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1726
    .local v2, "curTime":J
    iget-wide v4, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mShowOverlayTime:J

    sub-long v4, v2, v4

    .line 1727
    .local v4, "diff":J
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_18

    .line 1728
    return v7

    .line 1729
    :cond_18
    const-wide/16 v8, 0xc8

    cmp-long v6, v4, v8

    const/4 v8, 0x0

    if-gez v6, :cond_20

    .line 1730
    return v8

    .line 1732
    :cond_20
    iget v6, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    const/4 v9, 0x2

    if-le v6, v1, :cond_67

    .line 1734
    iget-boolean v6, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsWriteLuxLog:Z

    if-nez v6, :cond_66

    .line 1735
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutPocket lux : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " luxBase : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v10, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxBase:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " light_limit : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iput-boolean v7, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsWriteLuxLog:Z

    .line 1737
    sget-boolean v6, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v6, v7, :cond_66

    .line 1738
    sput v9, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1739
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v6, v9}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1742
    :cond_66
    return v7

    .line 1744
    :cond_67
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-eq v6, v7, :cond_8b

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1745
    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-eq v6, v11, :cond_8b

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1746
    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-eq v6, v10, :cond_8b

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1747
    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    const/4 v13, 0x6

    if-ne v6, v13, :cond_ce

    .line 1748
    :cond_8b
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v6

    if-ne v6, v9, :cond_ce

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxDelayTime()J

    move-result-wide v13

    const-wide/16 v15, 0x64

    add-long/2addr v13, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    cmp-long v6, v13, v15

    if-gtz v6, :cond_ce

    .line 1750
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutPocket prox "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v9}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    sget-boolean v6, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v6, v7, :cond_cd

    .line 1752
    sput v12, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1753
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v6, v12}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1755
    :cond_cd
    return v7

    .line 1758
    :cond_ce
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-eq v6, v11, :cond_e6

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1759
    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-eq v6, v10, :cond_e6

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    .line 1760
    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-ne v6, v9, :cond_117

    .line 1761
    :cond_e6
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v6

    const/16 v10, 0x33

    if-ne v6, v10, :cond_fc

    iget-boolean v6, v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsAvailableTiltUse:Z

    if-ne v6, v7, :cond_fc

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketMotionManager;->isTiltChanged()Z

    move-result v6

    if-eq v6, v7, :cond_104

    :cond_fc
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketMotionManager;->isTiltDetectorFlag()Z

    move-result v6

    if-ne v6, v7, :cond_117

    .line 1762
    :cond_104
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v8, "Tilt occured!! - out pocket"

    invoke-static {v6, v8}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    sget-boolean v6, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v6, v7, :cond_114

    .line 1764
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v6, v11}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1766
    :cond_114
    sput v11, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1767
    return v7

    .line 1771
    :cond_117
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v6

    if-ne v6, v12, :cond_133

    .line 1772
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v6}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v6

    if-ne v6, v9, :cond_133

    .line 1773
    sget-boolean v6, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v6, v7, :cond_132

    .line 1774
    sput v12, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1775
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v6, v12}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1777
    :cond_132
    return v7

    .line 1781
    :cond_133
    iget v6, v0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    iget v10, v0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    if-eq v6, v10, :cond_145

    .line 1783
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v6

    if-ne v6, v7, :cond_145

    sget v6, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_145

    .line 1784
    return v7

    .line 1787
    :cond_145
    return v8
.end method

.method private readPartialOffInt()I
    .registers 7

    .line 1826
    const/4 v0, 0x0

    .line 1827
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, -0x1

    .line 1828
    .local v1, "data":I
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLockProxInt:Ljava/lang/Object;

    monitor-enter v2

    .line 1831
    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_10
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    move-object v0, v3

    .line 1834
    goto :goto_1a

    .line 1854
    :catchall_e
    move-exception v3

    goto :goto_5d

    .line 1843
    :catch_10
    move-exception v3

    goto :goto_47

    .line 1832
    :catch_12
    move-exception v3

    .line 1833
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_13
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v5, "File not found! - Read"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_1a
    if-nez v0, :cond_24

    .line 1836
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v4, "Output file is null!"

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 1838
    :cond_24
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v3

    move v1, v3

    .line 1839
    add-int/lit8 v1, v1, -0x30

    .line 1840
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read proximity data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_46} :catch_10
    .catchall {:try_start_13 .. :try_end_46} :catchall_e

    .line 1853
    :goto_46
    goto :goto_5b

    .line 1844
    .local v3, "e":Ljava/io/IOException;
    :goto_47
    :try_start_47
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_e

    .line 1845
    if-eqz v0, :cond_54

    .line 1847
    :try_start_4c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50
    .catchall {:try_start_4c .. :try_end_4f} :catchall_e

    .line 1850
    goto :goto_54

    .line 1848
    :catch_50
    move-exception v4

    .line 1849
    .local v4, "err":Ljava/io/IOException;
    :try_start_51
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1852
    .end local v4    # "err":Ljava/io/IOException;
    :cond_54
    :goto_54
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v5, "File read fail!!"

    invoke-static {v4, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5b
    monitor-exit v2

    .line 1855
    return v1

    .line 1854
    :goto_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_e

    throw v3
.end method

.method private stopVirtualPocketOperation(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 2027
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    .line 2029
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 2031
    :cond_12
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_35

    .line 2032
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v0

    if-ne v0, v3, :cond_28

    .line 2033
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxySensor()V

    .line 2035
    :cond_28
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v0

    if-ne v0, v3, :cond_35

    .line 2036
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 2039
    :cond_35
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v0, v3, :cond_3f

    .line 2040
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 2042
    :cond_3f
    return-void
.end method


# virtual methods
.method public checkAodCurTime()Z
    .registers 10

    .line 1221
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkAodModeSetting()I

    move-result v0

    .line 1222
    .local v0, "mode":I
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_mode_start_time"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1223
    .local v1, "aodStartTime":I
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "aod_mode_end_time"

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1224
    .local v2, "aodEndTime":I
    const/4 v4, 0x0

    .line 1226
    .local v4, "aodCurTime":I
    const/4 v5, 0x3

    if-eq v0, v5, :cond_23

    .line 1227
    return v3

    .line 1229
    :cond_23
    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v6, v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->setAodTime(II)V

    .line 1231
    if-ne v0, v5, :cond_2e

    if-le v1, v2, :cond_2e

    .line 1232
    add-int/lit16 v2, v2, 0x5a0

    .line 1235
    :cond_2e
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1236
    .local v5, "curDate":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual {v5}, Ljava/util/Date;->getMinutes()I

    move-result v7

    add-int/2addr v6, v7

    .line 1238
    .end local v4    # "aodCurTime":I
    .local v6, "aodCurTime":I
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AOD start : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cur : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    if-gt v1, v6, :cond_74

    if-gt v6, v2, :cond_74

    .line 1241
    const/4 v3, 0x1

    return v3

    .line 1244
    :cond_74
    return v3
.end method

.method public checkAodModeSetting()I
    .registers 11

    .line 1181
    const/4 v0, 0x0

    .line 1182
    .local v0, "mode":I
    const/4 v1, 0x0

    .line 1183
    .local v1, "aodStartTime":I
    const/4 v2, 0x0

    .line 1184
    .local v2, "aodEndTime":I
    const/4 v3, 0x0

    .line 1185
    .local v3, "aodSetting":Z
    const/4 v4, 0x0

    .line 1193
    .local v4, "aodTabToShow":Z
    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "aod_mode"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_18

    move v5, v6

    goto :goto_19

    :cond_18
    move v5, v7

    :goto_19
    move v3, v5

    .line 1196
    if-ne v3, v6, :cond_69

    .line 1197
    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "aod_tap_to_show_mode"

    invoke-static {v5, v9, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2c

    move v5, v6

    goto :goto_2d

    :cond_2c
    move v5, v7

    :goto_2d
    move v4, v5

    .line 1198
    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "aod_mode_start_time"

    invoke-static {v5, v9, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1199
    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "aod_mode_end_time"

    invoke-static {v5, v9, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1201
    if-ne v4, v6, :cond_51

    .line 1202
    const/4 v0, 0x2

    .line 1203
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "aod_tab_to_show"

    invoke-static {v5, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 1205
    :cond_51
    if-nez v4, :cond_60

    if-nez v1, :cond_60

    if-nez v2, :cond_60

    .line 1206
    const/4 v0, 0x1

    .line 1207
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "aod_show_always"

    invoke-static {v5, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 1209
    :cond_60
    const/4 v0, 0x3

    .line 1210
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "aod_show_custom_time"

    invoke-static {v5, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 1213
    :cond_69
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v6, "aod_setting : off"

    invoke-static {v5, v6}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :goto_70
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    sget-object v6, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/PocketLogManager;->setAodType(Ljava/lang/String;)V

    .line 1217
    return v0
.end method

.method public checkRegisterProximitySensor()V
    .registers 9

    .line 744
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_32

    .line 745
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    if-ne v0, v2, :cond_21

    .line 746
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->writeTspProxInt(I)I

    .line 747
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "Tsp : Write 1"

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerHoverSensor()V

    goto :goto_32

    .line 751
    :cond_21
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->writeTspProxInt(I)I

    .line 752
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "Tsp : Write 0"

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterHoverSensor()V

    .line 756
    :cond_32
    :goto_32
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->readProxInt()I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_56

    .line 757
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    if-ne v0, v2, :cond_4c

    .line 758
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 759
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    goto :goto_56

    .line 762
    :cond_4c
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 763
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 766
    :cond_56
    :goto_56
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ea

    .line 767
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    const/4 v3, 0x7

    const-wide/16 v5, 0x0

    if-nez v0, :cond_8b

    .line 768
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v0

    if-ne v0, v2, :cond_73

    .line 769
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v3, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 771
    :cond_73
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    const/4 v3, 0x5

    if-eq v0, v2, :cond_7e

    if-eq v0, v4, :cond_7e

    if-eq v0, v1, :cond_7e

    if-ne v0, v3, :cond_85

    .line 773
    :cond_7e
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 776
    :cond_85
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v3, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_ea

    .line 778
    :cond_8b
    if-ne v0, v2, :cond_ea

    .line 779
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isAodOnTheScreen()Z

    move-result v0

    .line 780
    .local v0, "aodState":Z
    if-ne v0, v2, :cond_b8

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v1

    if-eqz v1, :cond_a5

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v1

    const/16 v7, 0x1f

    if-ne v1, v7, :cond_b8

    .line 781
    :cond_a5
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 783
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v1

    if-ne v1, v2, :cond_e1

    .line 784
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v1, v3, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_e1

    .line 787
    :cond_b8
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v1

    if-nez v1, :cond_e1

    .line 788
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v3, 0x14b

    if-ne v1, v3, :cond_ce

    if-ne v1, v3, :cond_e1

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v1

    if-ne v1, v2, :cond_e1

    .line 789
    :cond_ce
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v3, 0x138

    if-ne v1, v3, :cond_da

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v1

    if-eq v1, v2, :cond_e1

    .line 790
    :cond_da
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 795
    :cond_e1
    :goto_e1
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->enablePocketPositionSensor(I)V

    .line 798
    .end local v0    # "aodState":Z
    :cond_ea
    :goto_ea
    return-void
.end method

.method checkSensorType()V
    .registers 8

    .line 579
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsInitalized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 581
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    .line 583
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketDeviceManager;->isFolderType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsDualDisplayFolder:Z

    .line 586
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 587
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.pocketmode"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 588
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    .line 589
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFeaturePocketlevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_48
    const-string v2, "com.sec.feature.pocketsensitivitymode"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 592
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    .line 593
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFeaturePocketPositionlevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_70
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->checkProximityType(Landroid/content/Context;I)V

    .line 597
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    sget v5, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/gesture/PocketSensitivityManager;->checkSensitivityType(Landroid/content/Context;II)V

    .line 599
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10033

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    .line 600
    if-nez v2, :cond_bd

    .line 601
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    .line 602
    if-nez v2, :cond_b2

    .line 603
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10044

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    .line 604
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "Sensor.TYPE_LIGHT_CAMERA"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensorType:I

    goto :goto_c6

    .line 608
    :cond_b2
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "Sensor.TYPE_LIGHT"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensorType:I

    goto :goto_c6

    .line 612
    :cond_bd
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "Sensor.TYPE_LIGHT_CCT"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensorType:I

    .line 616
    :goto_c6
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 617
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v3

    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensorType:I

    sget v6, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/gesture/PocketLogManager;->setSensorType(IIII)V

    .line 618
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsInitalized:Z

    .line 619
    return-void
.end method

.method public checkSettingEnable()V
    .registers 5

    .line 1175
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabledPrev:Z

    .line 1176
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_pocket"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    :cond_15
    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    .line 1178
    return-void
.end method

.method public getLuminance()I
    .registers 4

    .line 1367
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1368
    .local v0, "luminance":I
    return v0
.end method

.method getPopUpState()Z
    .registers 2

    .line 670
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    return v0
.end method

.method handleBootComplete()V
    .registers 10

    .line 1469
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkSensorType()V

    .line 1470
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkAutoBrightnessSetting()V

    .line 1472
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mInputManager:Landroid/hardware/input/InputManager;

    .line 1473
    if-nez v0, :cond_16

    .line 1474
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "mInputManager is null "

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 1475
    :cond_16
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v2, 0x137

    if-eq v1, v2, :cond_39

    const/16 v2, 0x138

    if-ne v1, v2, :cond_21

    goto :goto_39

    .line 1478
    :cond_21
    const/16 v2, 0x14c

    if-ne v1, v2, :cond_2d

    .line 1479
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForDualFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    goto :goto_40

    .line 1481
    :cond_2d
    const/16 v2, 0x14b

    if-ne v1, v2, :cond_40

    .line 1482
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForFolder:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    goto :goto_40

    .line 1476
    :cond_39
    :goto_39
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->inputLidEventListenerForFlip:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    .line 1485
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isAodOnTheScreen()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v0, v6, :cond_9f

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v8, 0x20

    if-eq v0, v8, :cond_9f

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v8, 0x21

    if-eq v0, v8, :cond_9f

    .line 1486
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v5, :cond_7d

    .line 1487
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1488
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v0

    if-ne v0, v6, :cond_e4

    .line 1489
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_e4

    .line 1492
    :cond_7d
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v4, :cond_91

    .line 1493
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1494
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    goto :goto_e4

    .line 1496
    :cond_91
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v3, :cond_e4

    .line 1497
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    goto :goto_e4

    .line 1501
    :cond_9f
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v7, :cond_e4

    .line 1502
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    if-ne v0, v5, :cond_c4

    .line 1503
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1504
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v0

    if-nez v0, :cond_e4

    .line 1505
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_e4

    .line 1508
    :cond_c4
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    if-ne v0, v4, :cond_d7

    .line 1509
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1510
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    goto :goto_e4

    .line 1512
    :cond_d7
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    if-ne v0, v3, :cond_e4

    .line 1513
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1518
    :cond_e4
    :goto_e4
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketSensitivityManager;->enablePocketPositionSensor(I)V

    .line 1519
    return-void
.end method

.method handlePocketIn()V
    .registers 9

    .line 1373
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendRecogPocketInt:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_10

    .line 1374
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1375
    iput-boolean v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendRecogPocketInt:Z

    .line 1377
    :cond_10
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v0, :cond_a3

    .line 1378
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-gt v0, v3, :cond_8a

    .line 1379
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-eq v0, v5, :cond_2c

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    if-ne v0, v3, :cond_29

    goto :goto_2c

    .line 1384
    :cond_29
    iput v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    goto :goto_34

    .line 1380
    :cond_2c
    :goto_2c
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1381
    iput v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1386
    :goto_34
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    if-eq v0, v3, :cond_43

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v6, 0x6

    if-ne v0, v6, :cond_48

    .line 1387
    :cond_43
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1390
    :cond_48
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxLightSensoValue:I

    const/16 v6, 0x32

    if-ge v0, v6, :cond_51

    .line 1391
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxBase:I

    goto :goto_54

    .line 1393
    :cond_51
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxBase:I

    .line 1395
    :goto_54
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePocketIn lux:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " prox : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v7}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " luxBase:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxBase:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    :cond_8a
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    if-ne v0, v5, :cond_94

    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsOccurTouch:Z

    if-ne v0, v3, :cond_94

    .line 1398
    iput v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1399
    :cond_94
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    if-ne v0, v4, :cond_a3

    .line 1400
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mShowOverlayTime:J

    .line 1404
    :cond_a3
    return-void
.end method

.method handlePocketOut()V
    .registers 10

    .line 1408
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxOutDump:I

    .line 1409
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxBase:I

    .line 1410
    iget-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutHover:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_27

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1411
    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    .line 1412
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1413
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    goto :goto_31

    .line 1416
    :cond_27
    sget-boolean v1, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    if-nez v1, :cond_31

    .line 1417
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1420
    :cond_31
    :goto_31
    iget-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    if-nez v1, :cond_3e

    .line 1421
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1422
    iput-boolean v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    .line 1425
    :cond_3e
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v1

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-ne v1, v5, :cond_a8

    .line 1431
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->alertProxAvailable()Z

    move-result v1

    if-eqz v1, :cond_65

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v1

    if-ne v1, v4, :cond_65

    .line 1432
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v5, "Proximity Alert release!!"

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 1435
    :cond_65
    iget v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    const/16 v5, 0x32

    if-ge v1, v5, :cond_73

    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v1

    if-ne v1, v7, :cond_c0

    .line 1436
    :cond_73
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acc, AT is unregister by condition "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v8}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterAccelSensor()V

    .line 1438
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterActivityTracker()V

    goto :goto_c0

    .line 1442
    :cond_a8
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v1

    if-ne v1, v6, :cond_c0

    iget v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    const/16 v5, 0x67

    if-ne v1, v5, :cond_c0

    .line 1443
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v5, "handlePocketOut - cover open"

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->unregisterLightSensor()V

    .line 1447
    :cond_c0
    :goto_c0
    iput v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1449
    sget-boolean v1, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v1, v4, :cond_ed

    .line 1450
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1451
    sget-boolean v1, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    if-ne v1, v4, :cond_ed

    .line 1452
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v1

    if-ne v1, v7, :cond_da

    .line 1454
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    goto :goto_e4

    .line 1456
    :cond_da
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v1

    if-ne v1, v4, :cond_e4

    .line 1458
    sput v7, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1460
    :cond_e4
    :goto_e4
    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1461
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1462
    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightReCheckCnt:I

    .line 1465
    :cond_ed
    return-void
.end method

.method handleScreenOff()V
    .registers 15

    .line 1577
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    if-eqz v1, :cond_35

    .line 1579
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    new-instance v9, Lcom/samsung/android/gesture/PocketDumpScreenOff;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    iget v7, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    iget v8, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxDump:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/gesture/PocketDumpScreenOff;-><init>(JJII)V

    invoke-virtual {v1, v9}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 1582
    :cond_35
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->setScreenOn(Z)V

    .line 1583
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->NOT_USE:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    iput-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->irisState:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    .line 1584
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setPocketSensorReceived(Z)V

    .line 1585
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setPocketPosSensorReceived(Z)V

    .line 1586
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setLightLimitByCallmin(Z)V

    .line 1587
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mShowOverlayTime:J

    .line 1588
    iput-wide v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWriteDumpTime:J

    .line 1589
    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsOccurTouch:Z

    .line 1590
    sput-boolean v2, Lcom/samsung/android/gesture/PocketModeEvent;->isTimeoutDelayInvalidEnabled:Z

    .line 1591
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->NONE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-direct {p0, v1}, Lcom/samsung/android/gesture/PocketModeEvent;->changeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    .line 1593
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isAodOnTheScreen()Z

    move-result v1

    .line 1594
    .local v1, "aodState":Z
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v5, v9, :cond_122

    .line 1595
    sget v5, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v11, 0x138

    if-ne v5, v11, :cond_7a

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v5

    if-eq v5, v10, :cond_84

    .line 1596
    :cond_7a
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterAccelSensor()V

    .line 1597
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterActivityTracker()V

    .line 1599
    :cond_84
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v5

    const/16 v12, 0x20

    const/16 v13, 0x8

    if-eq v5, v12, :cond_d2

    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v5

    const/16 v12, 0x21

    if-ne v5, v12, :cond_9b

    goto :goto_d2

    .line 1615
    :cond_9b
    if-ne v1, v10, :cond_b1

    .line 1616
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1618
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v5

    if-ne v5, v10, :cond_114

    .line 1619
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v11, 0x7

    invoke-virtual {v5, v11, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_114

    .line 1622
    :cond_b1
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5, v9}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1624
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v5

    if-nez v5, :cond_114

    .line 1625
    sget v5, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v11, 0x137

    if-ne v5, v11, :cond_cc

    if-ne v5, v11, :cond_114

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v5

    if-nez v5, :cond_114

    .line 1626
    :cond_cc
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v5, v13, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_114

    .line 1600
    :cond_d2
    :goto_d2
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5, v9}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1602
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v5

    if-nez v5, :cond_fc

    .line 1603
    sget v5, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v12, 0x14b

    if-ne v5, v12, :cond_ed

    if-ne v5, v12, :cond_fc

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v5

    if-ne v5, v10, :cond_fc

    .line 1604
    :cond_ed
    sget v5, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    if-ne v5, v11, :cond_f7

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v5

    if-eq v5, v10, :cond_fc

    .line 1605
    :cond_f7
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v5, v13, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1609
    :cond_fc
    sget v5, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-eq v5, v10, :cond_104

    if-eq v5, v9, :cond_104

    if-ne v5, v7, :cond_10b

    .line 1610
    :cond_104
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v11, 0x12

    invoke-virtual {v5, v11, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1612
    :cond_10b
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/samsung/android/gesture/PocketSensitivityManager;->enablePocketPositionSensor(I)V

    .line 1631
    :cond_114
    :goto_114
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v5

    if-ne v5, v10, :cond_154

    .line 1632
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    goto :goto_154

    .line 1635
    :cond_122
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v5

    if-eq v5, v8, :cond_132

    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v5

    if-ne v5, v7, :cond_154

    .line 1636
    :cond_132
    if-eqz v1, :cond_144

    .line 1637
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 1638
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1639
    const-string v5, "Sensor change : AOD is on"

    invoke-static {v0, v5}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_152

    .line 1641
    :cond_144
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5, v10}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 1642
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1644
    :goto_152
    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mPhysicalProxUseFlag:Z

    .line 1647
    :cond_154
    :goto_154
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v5, v7, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1648
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketDeviceManager;->registerCoverListener()V

    .line 1650
    sget-boolean v5, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v5, v10, :cond_16e

    .line 1651
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->pbdm:Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v5, v10}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1652
    sput v10, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 1653
    sget-object v5, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v5, v8, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1656
    :cond_16e
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v7, :cond_190

    .line 1657
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxLiteState(I)V

    .line 1658
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->registerLiteProxSensor()V

    .line 1659
    if-nez v1, :cond_1d1

    .line 1660
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v3, v5, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1661
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPhysicalProximitySensor()V

    goto :goto_1d1

    .line 1664
    :cond_190
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v3

    if-ne v3, v8, :cond_1c3

    .line 1665
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->isCoverOpened()Z

    move-result v3

    if-ne v3, v10, :cond_1d1

    .line 1666
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v3

    if-ne v3, v8, :cond_1b4

    .line 1667
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v3, v5, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1668
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPhysicalProximitySensor()V

    .line 1670
    :cond_1b4
    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v3, v4, v5, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1671
    const-string v3, "register light sensor_Scrren_off"

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d1

    .line 1674
    :cond_1c3
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1d1

    .line 1675
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxLiteState(I)V

    .line 1678
    :cond_1d1
    :goto_1d1
    sget v3, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-ne v3, v8, :cond_1e6

    .line 1679
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterActivityTracker()V

    .line 1681
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    sget-object v4, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->UNKNOWN:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityState(Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;)V

    .line 1682
    const-string v3, "UNKNOWN_INSENSITIVE_MODE"

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :cond_1e6
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v0

    if-ne v0, v10, :cond_207

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v6, :cond_207

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getVpData()Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketData;->getState()I

    move-result v0

    if-nez v0, :cond_207

    .line 1688
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v9}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 1690
    :cond_207
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->initVirtualPocketData()V

    .line 1691
    sput v2, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxBase:I

    .line 1693
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v3, 0x14c

    if-ne v0, v3, :cond_223

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    if-ne v0, v10, :cond_223

    .line 1694
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->psm:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->disableDualFlipMode()V

    .line 1695
    sput-boolean v2, Lcom/samsung/android/gesture/PocketModeEvent;->pocketState:Z

    .line 1696
    sput-boolean v2, Lcom/samsung/android/gesture/PocketModeEvent;->pocketPosState:Z

    .line 1698
    :cond_223
    return-void
.end method

.method handleScreenOn()V
    .registers 8

    .line 1523
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->setScreenOn(Z)V

    .line 1524
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1525
    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsWriteLuxLog:Z

    .line 1526
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLuminance()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuminance:I

    .line 1528
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_45

    .line 1531
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mWakeUpReason:I

    const/16 v3, 0x67

    if-ne v0, v3, :cond_2f

    .line 1532
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "Cover open, reset pocket sensor"

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxySensor()V

    .line 1536
    :cond_2f
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v3, 0x138

    if-ne v0, v3, :cond_3b

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v0

    if-eq v0, v1, :cond_45

    .line 1537
    :cond_3b
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerAccelSensor()Z

    .line 1538
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerActivityTracker()V

    .line 1542
    :cond_45
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v3, :cond_57

    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v4, :cond_85

    .line 1543
    :cond_57
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPhysicalProxy()Z

    move-result v0

    if-ne v0, v1, :cond_74

    .line 1544
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPhysicalProximitySensor()V

    .line 1545
    iput v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsCnt:I

    .line 1546
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1547
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v3, "unregister display manager listener"

    invoke-static {v0, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    :cond_74
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v3, 0x33

    if-ne v0, v3, :cond_85

    .line 1550
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerAccelSensor()Z

    .line 1551
    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsAvailableTiltUse:Z

    .line 1555
    :cond_85
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_a0

    .line 1556
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "Hover recheck start"

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutHover:Z

    .line 1558
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v2, 0xa

    const-wide/16 v5, 0x4e20

    invoke-virtual {v0, v2, v5, v6}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1561
    :cond_a0
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    if-ne v0, v4, :cond_a9

    .line 1562
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerActivityTracker()V

    .line 1565
    :cond_a9
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->isExceptionCase()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1566
    return-void

    .line 1569
    :cond_b0
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->elState:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->SHOWN:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    if-ne v0, v2, :cond_bb

    .line 1570
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->ACTIVE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-direct {p0, v0}, Lcom/samsung/android/gesture/PocketModeEvent;->changeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    .line 1572
    :cond_bb
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1573
    return-void
.end method

.method injectDataToSensorHub(F)V
    .registers 8
    .param p1, "injectData"    # F

    .line 648
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 650
    .local v0, "data":[F
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_61

    .line 651
    const/4 v1, 0x0

    .line 652
    .local v1, "pocket":Landroid/hardware/Sensor;
    const/4 v2, 0x0

    aput p1, v0, v2

    .line 653
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inject Data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_38

    .line 655
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    const v5, 0x10045

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    goto :goto_4a

    .line 657
    :cond_38
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4a

    .line 658
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    const v5, 0x10048

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 660
    :cond_4a
    :goto_4a
    if-eqz v1, :cond_61

    .line 661
    const v4, 0x10000003

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v5, v0}, Landroid/hardware/SensorAdditionalInfo;->createSamsungCustomInfo(Landroid/hardware/Sensor;II[I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v2

    .line 662
    .local v2, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 663
    const-string v4, "inject Data failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .end local v1    # "pocket":Landroid/hardware/Sensor;
    .end local v2    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_61
    return-void
.end method

.method injectProxyState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 645
    return-void
.end method

.method public isAodOnTheScreen()Z
    .registers 4

    .line 1249
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkAodModeSetting()I

    move-result v0

    .line 1250
    .local v0, "mode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v2, 0x3

    if-ne v0, v2, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->checkAodCurTime()Z

    move-result v2

    if-ne v2, v1, :cond_11

    goto :goto_13

    .line 1253
    :cond_11
    const/4 v1, 0x0

    return v1

    .line 1251
    :cond_13
    :goto_13
    return v1
.end method

.method reRegisterSensorForSubDisplay()V
    .registers 5

    .line 1812
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v1, "sub display re-register sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    .line 1814
    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1815
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->currentState:I

    .line 1816
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    .line 1817
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->plm:Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1818
    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightReCheckCnt:I

    .line 1820
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventSubDisplayListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1821
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerNormalProxSensor()V

    .line 1822
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v1, 0x9

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1823
    return-void
.end method

.method public readInputEvent(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2054
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 2055
    .local v0, "N":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2b

    .line 2056
    iget-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    if-ne v1, v2, :cond_2b

    .line 2057
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touch action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    :cond_2b
    const/4 v1, 0x0

    .line 2060
    .local v1, "palmstate":Z
    iput-boolean v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsOccurTouch:Z

    .line 2061
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5d

    .line 2062
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningTouchSensor()Z

    move-result v3

    if-nez v3, :cond_40

    .line 2063
    return-void

    .line 2065
    :cond_40
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_41
    if-ge v3, v0, :cond_52

    .line 2066
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4f

    .line 2067
    const/4 v1, 0x1

    .line 2068
    goto :goto_52

    .line 2065
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 2072
    .end local v3    # "i":I
    :cond_52
    :goto_52
    const/4 v3, 0x3

    if-ge v0, v3, :cond_57

    if-eqz v1, :cond_5d

    .line 2073
    :cond_57
    sget v3, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/lit8 v3, v3, 0x8

    sput v3, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 2076
    :cond_5d
    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_7b

    iget-boolean v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsDualDisplayFolder:Z

    if-ne v3, v2, :cond_7b

    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketModeEvent;->getLIDState()I

    move-result v3

    if-ne v3, v2, :cond_7b

    sget-boolean v3, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    if-ne v3, v2, :cond_7b

    .line 2078
    sget v2, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/lit8 v2, v2, 0x8

    sput v2, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7b} :catch_7c

    .line 2082
    .end local v0    # "N":I
    .end local v1    # "palmstate":Z
    :cond_7b
    goto :goto_84

    .line 2080
    :catch_7c
    move-exception v0

    .line 2081
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    const-string v2, "readInputEvent exception"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_84
    return-void
.end method

.method registerSensor()V
    .registers 8

    .line 1264
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1265
    return-void

    .line 1267
    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    .line 1268
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->lightTotalCnt:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->validLightCnt:I

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1269
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    .line 1272
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3c

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getVpData()Lcom/samsung/android/gesture/VirtualPocketData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketData;->getReason()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_3c

    .line 1273
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v2

    if-ne v2, v1, :cond_37

    .line 1274
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    goto :goto_3c

    .line 1277
    :cond_37
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    .line 1280
    :cond_3c
    :goto_3c
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ne v2, v4, :cond_79

    .line 1281
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxLiteState()I

    move-result v2

    if-ne v2, v1, :cond_5a

    .line 1282
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1283
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/2addr v0, v6

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    goto :goto_73

    .line 1285
    :cond_5a
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxLiteState()I

    move-result v2

    if-le v2, v1, :cond_6e

    .line 1286
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0, v6}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1287
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/lit8 v0, v0, -0x3

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    goto :goto_73

    .line 1289
    :cond_6e
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1291
    :goto_73
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerTiltSensor()V

    goto :goto_d1

    .line 1293
    :cond_79
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v1, :cond_87

    .line 1294
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->registerNormalProxSensor()V

    goto :goto_d1

    .line 1296
    :cond_87
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v6, :cond_9a

    .line 1297
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->startCheckingTouchMonitoring()V

    .line 1298
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerTiltSensor()V

    goto :goto_d1

    .line 1300
    :cond_9a
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v5, :cond_d1

    .line 1301
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLockProxInt:Ljava/lang/Object;

    monitor-enter v0

    .line 1302
    :try_start_a5
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->readProxInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsProx:I

    .line 1303
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read Proximity data in register : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sysfsProx:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_a5 .. :try_end_c8} :catchall_ce

    .line 1305
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->registerTiltSensor()V

    goto :goto_d1

    .line 1304
    :catchall_ce
    move-exception v1

    :try_start_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v1

    .line 1307
    :cond_d1
    :goto_d1
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register prox type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v1

    if-eq v1, v5, :cond_10b

    .line 1310
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    .line 1312
    const-string v1, "register light sensor"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :cond_10b
    return-void
.end method

.method unregisterLightSensor()V
    .registers 3

    .line 622
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_9

    .line 623
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 625
    :cond_9
    return-void
.end method

.method unregisterSensor()V
    .registers 6

    .line 1317
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    if-nez v0, :cond_5

    .line 1318
    return-void

    .line 1320
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_15

    .line 1321
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pdm:Lcom/samsung/android/gesture/PocketDeviceManager;

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 1322
    iput-boolean v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    .line 1325
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->isRunning:Z

    .line 1326
    sget-object v4, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v4, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setRunningTouchSensor(Z)V

    .line 1327
    iput-wide v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorRegisterTime:J

    .line 1328
    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1329
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxLiteState(I)V

    .line 1330
    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxState(I)V

    .line 1331
    sput-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    .line 1332
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutHover:Z

    .line 1333
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendRecogPocketInt:Z

    .line 1334
    iput-boolean v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSendReleasePocketInt:Z

    .line 1335
    iget v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLuxDump:I

    .line 1336
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    .line 1338
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterSensor L : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mLux:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " P : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_6d

    .line 1341
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1343
    :cond_6d
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    if-ne v0, v1, :cond_7b

    .line 1344
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterNormalProxSensor()V

    goto :goto_9d

    .line 1345
    :cond_7b
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8a

    .line 1346
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterLiteProxSensor()V

    goto :goto_9d

    .line 1347
    :cond_8a
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9d

    .line 1348
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterAccelSensor()V

    .line 1349
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterActivityTracker()V

    .line 1352
    :cond_9d
    :goto_9d
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterTiltSensor()V

    .line 1354
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->sensorLightEventSubDisplayListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_ab

    .line 1355
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1357
    :cond_ab
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_ce

    .line 1358
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->pmm:Lcom/samsung/android/gesture/PocketMotionManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketMotionManager;->unregisterAccelSensor()V

    .line 1359
    sget-object v0, Lcom/samsung/android/gesture/PocketModeEvent;->ppm:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPhysicalProximitySensorForA71_5g()V

    .line 1360
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 1361
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1364
    :cond_ce
    return-void
.end method
