.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;,
        Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;,
        Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;,
        Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;,
        Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;,
        Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;,
        Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;,
        Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;,
        Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;,
        Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;
    }
.end annotation


# static fields
.field public static final ACTIONS_LEVEL_MAX:I = 0x1

.field public static final ACTIONS_LEVEL_MIN:I = 0x0

.field public static final DB_IBS_SWITCH:Ljava/lang/String; = "ibs_switch"

.field public static final DISABLE_GPS_BY_IBS:Ljava/lang/String; = "disable_gps_by_ibs"

.field public static final DISABLE_MOBILE_DATA_BY_IBS:Ljava/lang/String; = "disable_mobile_data_by_ibs"

.field public static final DISABLE_WIFI_BY_IBS:Ljava/lang/String; = "disable_wifi_by_ibs"

.field public static FAST_DROP_CURRENT_AOD_OFF:F = 35.0f

.field public static FAST_DROP_CURRENT_AOD_ON:F = 55.0f

.field public static final IBSLOGGING_APP_ID:Ljava/lang/String; = "com.android.server.ibs"

.field public static final IBSLOGGING_FEATURE_IBS:Ljava/lang/String; = "IBS"

.field public static final IBS_POLICY_ACTIVATED:Ljava/lang/String; = "ibs_policy_activated"

.field public static final IBS_STATE_BATTERY_DROP_CHECK:I = 0x6

.field public static final IBS_STATE_INACTIVE:I = 0x3

.field public static final IBS_STATE_MOTION:I = 0x4

.field public static final IBS_STATE_OFF:I = 0x2

.field public static final IBS_STATE_ON:I = 0x1

.field public static final IBS_STATE_SAFE_CHECK:I = 0x5

.field public static final MSG_IBS_BATTERY_LEVEL_CHECK:I = 0x6

.field public static final MSG_IBS_BOOT_COMPLETED:I = 0xa

.field public static final MSG_IBS_ENTER:I = 0x3

.field public static final MSG_IBS_EXIT:I = 0x4

.field public static final MSG_IBS_FORCE_EXIT:I = 0x7

.field public static final MSG_IBS_SAFE_CHECK:I = 0x5

.field public static final MSG_IBS_START:I = 0x1

.field public static final MSG_IBS_STOP:I = 0x2

.field public static final MSG_IBS_SYSSTATE_CLEAR:I = 0x9

.field public static final MSG_IBS_SYSSTATE_SET:I = 0x8

.field public static final ONE_MINIUTE_TIME:J = 0x0L

.field public static final PREF_DB:Ljava/lang/String; = "oper_pref"

.field public static final SAFE_NETSPEED:J = 0x1388L

.field public static final SYS_STATE_ACTION_ENABLE:I = 0x80

.field public static final SYS_STATE_ACTIVE_DURATION:I = 0x2

.field public static final SYS_STATE_CHARGING_OFF:I = 0x8

.field public static final SYS_STATE_INACTIVE_BITS:I = 0xf

.field public static final SYS_STATE_MASK:I = 0xff

.field public static final SYS_STATE_MOTION_STILL:I = 0x10

.field public static final SYS_STATE_POLICY_ENABLE:I = 0x1

.field public static final SYS_STATE_SAFE_BITS:I = 0x60

.field public static final SYS_STATE_SAFE_DOWNLOAD:I = 0x40

.field public static final SYS_STATE_SAFE_MUSIC:I = 0x20

.field public static final SYS_STATE_SCREEN_OFF:I = 0x4


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mActionsLevel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mActionsLock:Ljava/lang/Object;

.field public mActiveIntent:Landroid/content/Intent;

.field public mActivePendingIntent:Landroid/app/PendingIntent;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

.field public mCharging:Z

.field public mContext:Landroid/content/Context;

.field public mCurDisplay:Landroid/view/Display;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEndTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

.field public mEnterIBSBatteryLevel:I

.field public mEnterIBSTime:J

.field public mEstimatedBatteryCapacity:F

.field public mExitIBSBatteryLevel:I

.field public mExitIBSTime:J

.field public mFastDrainInternalState:I

.field public mFastDropCurrent:F

.field public mFilter:Landroid/content/IntentFilter;

.field public mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

.field public final mInactiveTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mInited:Z

.field public mIntelligentBatterySaverFastDrainAction:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

.field public mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

.field public mIntelligentBatterySaverSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

.field public final mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

.field public mMotionSensor:Landroid/hardware/Sensor;

.field public final mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;

.field public final mSafeCheckTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mScreenOn:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mStartTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

.field public mSysState:I

.field public final mTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;


# direct methods
.method public static synthetic $r8$lambda$1X-kIJX3b0w2kTYJNR2dlx4XYLo(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$8lYamAP8xHCq4ntTyBn06FCSrus(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$DNOZuCBzNX-vaA7CzhC5nXQVfbs(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$XNnVAVGKNWvqjzCARq4hLB7ez4o(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->lambda$new$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFastDrainInternalState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I
    .registers 1

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIntelligentBatterySaverLogger(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMotionListener(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMotionSensor(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/hardware/SensorManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSysState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)I
    .registers 1

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeoutAlarmListener(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Landroid/app/AlarmManager$OnAlarmListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFastDrainInternalState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbootCompleted(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->bootCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckBatteryInfo(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->checkBatteryInfo(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckDownloadSafe(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->checkDownloadSafe()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckMusicSafe(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->checkMusicSafe()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menterFastDrainRestriction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->enterFastDrainRestriction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexitFastDrainRestriction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->exitFastDrainRestriction()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBooleanState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBooleanState(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getIntState(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misCheckBatteryDropState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->isCheckBatteryDropState()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misFastDrainRestrictionOn(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->isFastDrainRestrictionOn()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mregisterIntelligentBatterySaverFastDrainAction(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->registerIntelligentBatterySaverFastDrainAction(Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportClearState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetBatteryInfo(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveBooleanState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;ZLjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveIntState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveIntState(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendExitFastDrainRestrictionMessage(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->sendExitFastDrainRestrictionMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSysState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setSysState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->start()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstop(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->stop()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtestState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateActivated(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateActivated()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/IntelligentBatterySaverLogger;Lcom/android/server/ibs/IntelligentBatterySaverSurvey;)V
    .registers 8

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    .line 90
    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->TAG:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener-IA;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    .line 122
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 125
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSafeCheckTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 137
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 150
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInactiveTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const v0, 0x454e4000    # 3300.0f

    .line 163
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEstimatedBatteryCapacity:F

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSTime:J

    const/4 v2, 0x0

    .line 165
    iput v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSBatteryLevel:I

    .line 166
    iput-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mExitIBSTime:J

    .line 167
    iput v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mExitIBSBatteryLevel:I

    .line 173
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 175
    iput-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 176
    iput-object p4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    .line 177
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-direct {p2, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    .line 178
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-direct {p2, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    .line 179
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    invoke-direct {p2, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    .line 180
    iput-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInited:Z

    .line 182
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getCustomStartTime()Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mStartTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    .line 183
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getCustomEndTime()Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEndTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    const/4 p2, 0x1

    .line 184
    iput-boolean p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    .line 187
    iput-boolean p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mCharging:Z

    .line 189
    iput v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    const/4 p2, 0x2

    .line 190
    iput p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 192
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    .line 193
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    iget-object p3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 197
    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    invoke-direct {p2, p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverFastDrainAction:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    .line 198
    invoke-virtual {p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->regisiterAction()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 1

    .line 123
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateActivated()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 4

    .line 127
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    .line 128
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    const-string/jumbo v2, "safe check alarm trigger"

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->scheduleSaveCheckTimeoutAlarm()V

    .line 130
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1d

    :cond_16
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    const-string v0, " safe check alarm triggered but state is safe check!"

    .line 132
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method private synthetic lambda$new$2()V
    .registers 4

    .line 139
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x5

    .line 140
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 141
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    const-string/jumbo v2, "move to safe check"

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->clearSafeCheck()V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->scheduleSaveCheckTimeoutAlarm()V

    .line 144
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_23

    :cond_1c
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    const-string v0, " motion alarm triggered but state is not motion!"

    .line 146
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 3

    .line 152
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x4

    .line 153
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 154
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    const-string/jumbo v1, "move to state motion"

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->startMonitoringMotionLocked()V

    .line 157
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->scheduleMotionTimeoutAlarm()V

    goto :goto_23

    :cond_1c
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    const-string v0, " inactive alarm triggered but state is not inactive!"

    .line 159
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method


# virtual methods
.method public final bigData()Ljava/lang/String;
    .registers 5

    .line 778
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "IBSEN"

    .line 781
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fgetactionEnabled(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "IBSDHC"

    .line 782
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fgetdrainHightCurrent(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "IBSRC"

    .line 783
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fgetrestrictedCurrent(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;)F

    move-result p0

    float-to-double v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p0

    .line 785
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 788
    :goto_2d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 789
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bootCompleted()V
    .registers 8

    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    const-string v1, "bootCompleted"

    .line 505
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ibs_policy_activated"

    .line 506
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBooleanState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 507
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :goto_14
    if-ltz v1, :cond_54

    .line 509
    :try_start_16
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 510
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_56

    :try_start_2e
    const-string v4, "IntelligentBatterySaverFastDrainPolicy"

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " cancel fast drain restriction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v3, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    invoke-interface {v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;->cancelFastDrainRestriction()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4b} :catch_4c
    .catchall {:try_start_2e .. :try_end_4b} :catchall_56

    goto :goto_22

    :catch_4c
    move-exception v3

    .line 515
    :try_start_4d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    :cond_51
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 519
    :cond_54
    monitor-exit v0

    goto :goto_59

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_56

    throw p0

    :cond_59
    :goto_59
    return-void
.end method

.method public final checkBatteryInfo(II)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 358
    iget-object v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)Z

    move-result v3

    const-string/jumbo v4, "warning !!! battery drop is more than 2 level"

    const/4 v5, 0x2

    const-wide/16 v6, 0x3e8

    const-string v8, " scale = "

    const/4 v9, 0x1

    const-string v10, "IntelligentBatterySaverFastDrainPolicy"

    if-nez v3, :cond_ac

    mul-int/lit8 v3, v1, 0x64

    .line 359
    div-int/2addr v3, v2

    .line 360
    iget-object v11, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v11}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2c

    .line 361
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v0, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fputlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;I)V

    goto/16 :goto_215

    .line 363
    :cond_2c
    iget-object v11, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v11}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)I

    move-result v11

    sub-int/2addr v11, v3

    if-ne v11, v9, :cond_99

    .line 364
    iget-object v4, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    div-long/2addr v11, v6

    invoke-static {v4, v11, v12}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fputstartTime(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;J)V

    .line 365
    iget-object v4, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v4, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fputlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;I)V

    .line 366
    iget-object v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v3, v9}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fputinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;Z)V

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBatteryInfo init level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " start time = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetstartTime(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetstartTime(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    goto/16 :goto_215

    .line 371
    :cond_99
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)I

    move-result v1

    sub-int/2addr v1, v3

    if-lt v1, v5, :cond_215

    .line 372
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v0, v12}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fputlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;I)V

    .line 373
    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_215

    .line 377
    :cond_ac
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    div-long/2addr v11, v6

    .line 378
    iget-object v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetstartTime(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)J

    move-result-wide v6

    sub-long v6, v11, v6

    mul-int/lit8 v3, v1, 0x64

    .line 379
    div-int/2addr v3, v2

    .line 380
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkBatteryInfo level = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " timeDelta = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v13, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 383
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v1, v9, :cond_205

    .line 384
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v1, v11, v12}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fputstartTime(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;J)V

    .line 385
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v1, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fputlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;I)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBatteryCapacity()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEstimatedBatteryCapacity:F

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-ltz v2, :cond_128

    const-wide/16 v2, 0x3c

    cmp-long v2, v6, v2

    if-gtz v2, :cond_128

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V

    return-void

    :cond_128
    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x45610000    # 3600.0f

    mul-float/2addr v1, v2

    long-to-float v2, v6

    div-float/2addr v1, v2

    .line 393
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aod_show_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_141

    move v2, v9

    goto :goto_142

    :cond_141
    move v2, v4

    :goto_142
    if-eqz v2, :cond_149

    .line 395
    sget v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->FAST_DROP_CURRENT_AOD_ON:F

    iput v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    goto :goto_14d

    .line 397
    :cond_149
    sget v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->FAST_DROP_CURRENT_AOD_OFF:F

    iput v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    .line 399
    :goto_14d
    iget v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    cmpl-float v3, v1, v3

    const-string v5, " and isAodEnabled = "

    const-string v6, "curCurrent = "

    if-ltz v3, :cond_1c6

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " > mFastDropCurrent = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fgetinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;)Z

    move-result v2

    if-nez v2, :cond_18b

    .line 404
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    invoke-static {v2, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fputdrainHightCurrent(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;F)V

    .line 405
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    invoke-static {v2, v9}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fputinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;Z)V

    .line 408
    :cond_18b
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_19c

    .line 410
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v4

    .line 412
    :cond_19c
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " and wifiApState = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    if-nez v4, :cond_215

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->sendEnterFastDrainRestrictionMessage()V

    goto :goto_215

    .line 418
    :cond_1c6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " < mFastDropCurrent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    goto :goto_215

    .line 423
    :cond_205
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v2, 0x2

    if-lt v1, v2, :cond_215

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V

    .line 425
    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_215
    :goto_215
    return-void
.end method

.method public final checkDownloadSafe()V
    .registers 15

    .line 285
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fgetinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_2e

    .line 286
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fputsampleTimeInSecs(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;J)V

    .line 287
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fputtxBytes(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;J)V

    .line 288
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fputrxBytes(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;J)V

    .line 289
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fputinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;Z)V

    goto/16 :goto_b6

    .line 291
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    .line 292
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    .line 293
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v5

    add-long v7, v0, v5

    .line 294
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fgettxBytes(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;)J

    move-result-wide v9

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fgetrxBytes(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;)J

    move-result-wide v11

    add-long/2addr v9, v11

    sub-long/2addr v7, v9

    .line 295
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-static {v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fgetsampleTimeInSecs(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;)J

    move-result-wide v9

    sub-long v9, v3, v9

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-gtz v2, :cond_5a

    return-void

    .line 299
    :cond_5a
    div-long v11, v7, v9

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkDownloadSafe speed: ,"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "IntelligentBatterySaverFastDrainPolicy"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x1388

    cmp-long v2, v11, v7

    const/16 v7, 0x40

    if-gez v2, :cond_a4

    .line 303
    invoke-virtual {p0, v7}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 304
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fputinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;Z)V

    goto :goto_b6

    .line 306
    :cond_a4
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-static {v2, v3, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fputsampleTimeInSecs(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;J)V

    .line 307
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-static {v2, v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fputtxBytes(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;J)V

    .line 308
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    invoke-static {v0, v5, v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fputrxBytes(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;J)V

    .line 309
    invoke-virtual {p0, v7}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    :goto_b6
    return-void
.end method

.method public final checkIdle()Z
    .registers 2

    .line 326
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 327
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    return p0
.end method

.method public final checkMusicSafe()V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 316
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    const/4 v2, -0x1

    .line 317
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v0

    const/16 v2, 0x20

    if-nez v1, :cond_1e

    if-eqz v0, :cond_1a

    goto :goto_1e

    .line 321
    :cond_1a
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    goto :goto_21

    .line 319
    :cond_1e
    :goto_1e
    invoke-virtual {p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    :goto_21
    return-void
.end method

.method public final clearSafeCheck()V
    .registers 2

    .line 793
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    and-int/lit8 v0, v0, -0x61

    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 794
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->-$$Nest$fputinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;Z)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, ""

    .line 826
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "IntelligentBatterySaverFastDrainPolicy "

    .line 827
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get current mSysState :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBatteryCapacity :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBatteryCapacity()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_89

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string/jumbo v1, "ibs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const/4 v0, 0x1

    .line 831
    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set new mSysState :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0, p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setSysState(I)V

    .line 834
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get updated mSysState :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_89
    return-void
.end method

.method public final enterFastDrainRestriction()V
    .registers 8

    .line 718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSTime:J

    .line 719
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSBatteryLevel:I

    const/16 v0, 0x80

    .line 720
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-nez v0, :cond_21

    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    const-string v0, "UI switch off disable the fast drain restriction."

    .line 721
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 724
    :cond_21
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_25
    const/4 v2, 0x1

    if-gt v1, v2, :cond_66

    .line 726
    :try_start_28
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 727
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_6e

    :try_start_40
    const-string v4, "IntelligentBatterySaverFastDrainPolicy"

    .line 729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " do fast drain restriction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v3, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    invoke-interface {v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;->doFastDrainRestriction()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5d} :catch_5e
    .catchall {:try_start_40 .. :try_end_5d} :catchall_6e

    goto :goto_34

    :catch_5e
    move-exception v3

    .line 732
    :try_start_5f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_66
    const-string/jumbo v1, "ibs_policy_activated"

    .line 736
    invoke-virtual {p0, v2, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(ZLjava/lang/String;)V

    .line 737
    monitor-exit v0

    return-void

    :catchall_6e
    move-exception p0

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public final exitFastDrainRestriction()V
    .registers 8

    .line 741
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateBigData()V

    .line 742
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryBigData()V

    .line 743
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V

    const/16 v0, 0x80

    .line 744
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    const-string v0, "UI switch off disable the cancel fast drain restriction."

    .line 745
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 748
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->sendIntentToSmartManager()V

    .line 749
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :goto_20
    if-ltz v1, :cond_60

    .line 751
    :try_start_22
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 752
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_69

    :try_start_3a
    const-string v4, "IntelligentBatterySaverFastDrainPolicy"

    .line 754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " cancel fast drain restriction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v3, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    invoke-interface {v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;->cancelFastDrainRestriction()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_57} :catch_58
    .catchall {:try_start_3a .. :try_end_57} :catchall_69

    goto :goto_2e

    :catch_58
    move-exception v3

    .line 757
    :try_start_59
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    :cond_5d
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    :cond_60
    const/4 v1, 0x0

    const-string/jumbo v2, "ibs_policy_activated"

    .line 761
    invoke-virtual {p0, v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(ZLjava/lang/String;)V

    .line 762
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_59 .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public final getBatteryCapacity()D
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-nez v0, :cond_d

    .line 352
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 354
    :cond_d
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getBooleanState(Ljava/lang/String;)Z
    .registers 6

    .line 1296
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    const-string v0, "Create shared preferences when get state."

    .line 1297
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "oper_pref"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 1301
    :cond_1b
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_20

    return v2

    .line 1305
    :cond_20
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBooleanState type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getCustomEndTime()Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;
    .registers 2

    const/4 p0, 0x7

    const/4 v0, 0x0

    .line 501
    invoke-static {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->-$$Nest$smvalueOf(II)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public getCustomStartTime()Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;
    .registers 2

    const/16 p0, 0x17

    const/4 v0, 0x0

    .line 495
    invoke-static {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->-$$Nest$smvalueOf(II)Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public final getIntState(Ljava/lang/String;)I
    .registers 6

    .line 1326
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    const-string v0, "Create shared preferences when get state."

    .line 1327
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "oper_pref"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 1331
    :cond_1b
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_20

    return v2

    .line 1335
    :cond_20
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntState type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final getIntelligentBatterySaverEnable()Z
    .registers 2

    const/4 v0, 0x1

    .line 610
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result p0

    return p0
.end method

.method public init()V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 237
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 238
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_31

    .line 241
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 243
    :cond_31
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 245
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    .line 248
    :cond_4e
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_5c

    .line 250
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    :cond_5c
    return-void
.end method

.method public final initAlarm(Z)V
    .registers 3

    if-eqz p1, :cond_12

    .line 550
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 551
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateActivated()V

    goto :goto_1d

    .line 553
    :cond_12
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz p0, :cond_1d

    .line 554
    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final initBroadcast(Z)V
    .registers 3

    if-eqz p1, :cond_2d

    .line 273
    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;

    .line 274
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.TIME_SET"

    .line 275
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.REBOOT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_34

    .line 280
    :cond_2d
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_34
    return-void
.end method

.method public final isCheckBatteryDropState()Z
    .registers 2

    .line 606
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getIntelligentBatterySaverEnable()Z

    move-result v0

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final isFastDrainRestrictionOn()Z
    .registers 3

    .line 602
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getIntelligentBatterySaverEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    if-ne p0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public final moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V
    .registers 5

    const/4 v0, 0x2

    .line 641
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    .line 642
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->stopMonitoringMotionLocked()V

    .line 645
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    .line 646
    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_19
    if-eqz p3, :cond_1e

    .line 649
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->clearSafeCheck()V

    :cond_1e
    return-void
.end method

.method public final registerIntelligentBatterySaverFastDrainAction(Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;I)V
    .registers 5

    if-ltz p3, :cond_20

    const/4 v0, 0x1

    if-gt p3, v0, :cond_20

    if-nez p2, :cond_8

    goto :goto_20

    .line 804
    :cond_8
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;)V

    .line 805
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 806
    :try_start_10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 807
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    monitor-exit p1

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    :goto_20
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    .line 800
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " registerIntelligentBatterySaverFastDrainAction error : level  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", callBack "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final reportClearState(I)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    if-eqz v0, :cond_10

    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 210
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 211
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    return-void
.end method

.method public final reportSetState(I)V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    if-eqz v0, :cond_10

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 203
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 204
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    return-void
.end method

.method public final resetBatteryBigData()V
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fputinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;Z)V

    .line 339
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fputactionEnabled(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;Z)V

    .line 340
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fputdrainHightCurrent(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;F)V

    .line 341
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    invoke-static {p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fputrestrictedCurrent(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;F)V

    return-void
.end method

.method public final resetBatteryInfo()V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fputinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;Z)V

    .line 346
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fputlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;I)V

    .line 347
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fputstartTime(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;J)V

    return-void
.end method

.method public final saveBooleanState(ZLjava/lang/String;)V
    .registers 7

    .line 1281
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    const-string v0, "Create shared preferences when save state."

    .line 1282
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string/jumbo v3, "oper_pref"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 1286
    :cond_1b
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_46

    .line 1287
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveBooleanState type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1291
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_46
    return-void
.end method

.method public final saveIntState(ILjava/lang/String;)V
    .registers 7

    .line 1311
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "IntelligentBatterySaverFastDrainPolicy"

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    const-string v0, "Create shared preferences when save state."

    .line 1312
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string/jumbo v3, "oper_pref"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 1316
    :cond_1b
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_46

    .line 1317
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveIntState type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1321
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_46
    return-void
.end method

.method public final scheduleInactiveTimeoutAlarm(J)V
    .registers 12

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, p1

    .line 615
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez p1, :cond_16

    .line 616
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 618
    :cond_16
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInactiveTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    const-string v6, "IntelligentBatterySaver.inactive"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final scheduleMotionTimeoutAlarm()V
    .registers 12

    .line 623
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-long v6, v0, v2

    .line 624
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_18

    .line 625
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 627
    :cond_18
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v9, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    const-string v8, "IntelligentBatterySaver.motion"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final scheduleSaveCheckTimeoutAlarm()V
    .registers 12

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-long v6, v0, v2

    .line 633
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_18

    .line 634
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 636
    :cond_18
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v9, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSafeCheckTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    const-string v8, "IntelligentBatterySaver.safecheck"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public sendBootCompletedMessage()V
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    if-eqz v0, :cond_f

    const/16 v1, 0xa

    .line 455
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 456
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    return-void
.end method

.method public final sendEnterFastDrainRestrictionMessage()V
    .registers 3

    .line 461
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    if-eqz v0, :cond_e

    const/4 v1, 0x3

    .line 462
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 463
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    return-void
.end method

.method public final sendExitFastDrainRestrictionMessage()V
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    if-eqz v0, :cond_e

    const/4 v1, 0x4

    .line 440
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 441
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    return-void
.end method

.method public sendForceEixtFastDrainRestrictionMessage()V
    .registers 3

    .line 447
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    if-eqz v0, :cond_e

    const/4 v1, 0x4

    .line 448
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 449
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    return-void
.end method

.method public final sendIntentToSmartManager()V
    .registers 4

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.sm.ACTION_FAST_BATTERY_DRAIN_DETECTED"

    .line 332
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm_cn"

    const-string v2, "com.samsung.android.sm.battery.receiver.FastBatteryDrainReceiver"

    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setIBSFastDrainActionEnable(Z)V
    .registers 3

    const/16 v0, 0x80

    if-eqz p1, :cond_8

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    goto :goto_b

    .line 220
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    :goto_b
    return-void
.end method

.method public setIBSFastDrainPolicyEnable(Z)V
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->startIntelligentBatterySaverFastDrainPolicy()V

    goto :goto_10

    .line 230
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->stopIntelligentBatterySaverFastDrainPolicy()V

    :goto_10
    return-void
.end method

.method public final setSysState(I)V
    .registers 8

    and-int/lit16 p1, p1, 0xff

    .line 589
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    if-eq p1, v0, :cond_74

    xor-int/2addr v0, p1

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sys State changed : [old , new, changebits] : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "IntelligentBatterySaverFastDrainPolicy"

    .line 591
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 594
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 596
    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 597
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateFastDrainInternalState()V

    :cond_74
    return-void
.end method

.method public final start()V
    .registers 2

    .line 256
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInited:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->initBroadcast(Z)V

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->initAlarm(Z)V

    .line 259
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInited:Z

    :cond_d
    return-void
.end method

.method public final startIntelligentBatterySaverFastDrainPolicy()V
    .registers 3

    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    const-string/jumbo v1, "startIntelligentBatterySaverFastDrainPolicy"

    .line 573
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final startMonitoringMotionLocked()V
    .registers 2

    .line 560
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    if-nez v0, :cond_d

    .line 561
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->registerLocked()Z

    :cond_d
    return-void
.end method

.method public final stop()V
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInited:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->initBroadcast(Z)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->initAlarm(Z)V

    .line 267
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInited:Z

    :cond_d
    return-void
.end method

.method public final stopIntelligentBatterySaverFastDrainPolicy()V
    .registers 3

    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    const-string/jumbo v1, "stopIntelligentBatterySaverFastDrainPolicy"

    .line 579
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final stopMonitoringMotionLocked()V
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;

    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->active:Z

    if-eqz v0, :cond_d

    .line 567
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$MotionListener;->unregisterLocked()V

    :cond_d
    return-void
.end method

.method public final testState(I)Z
    .registers 2

    .line 584
    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final unregisterIntelligentBatterySaverFastDrainAction(Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;I)V
    .registers 5

    if-ltz p3, :cond_20

    const/4 v0, 0x1

    if-gt p3, v0, :cond_20

    if-nez p2, :cond_8

    goto :goto_20

    .line 818
    :cond_8
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;)V

    .line 819
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 820
    :try_start_10
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 821
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 822
    monitor-exit p1

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    :goto_20
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    .line 814
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " registerIntelligentBatterySaverFastDrainAction error : level  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", callBack "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateActivated()V
    .registers 4

    .line 524
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mStartTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 526
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEndTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 527
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    .line 528
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    return-void
.end method

.method public updateBatteryLevelChanged(II)V
    .registers 5

    .line 432
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    if-eqz v0, :cond_e

    const/4 v1, 0x6

    .line 433
    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 434
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    return-void
.end method

.method public final updateBigData()V
    .registers 7

    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mExitIBSTime:J

    .line 767
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->-$$Nest$fgetlevel(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mExitIBSBatteryLevel:I

    .line 768
    iget-wide v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mExitIBSTime:J

    iget-wide v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1e

    const-wide/16 v1, 0x1

    .line 771
    :cond_1e
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    iget v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEstimatedBatteryCapacity:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSBatteryLevel:I

    sub-int/2addr v5, v0

    int-to-float v0, v5

    mul-float/2addr v4, v0

    const/high16 v0, 0x45610000    # 3600.0f

    mul-float/2addr v4, v0

    long-to-float v0, v1

    div-float/2addr v4, v0

    invoke-static {v3, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fputrestrictedCurrent(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;F)V

    .line 773
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->-$$Nest$fputactionEnabled(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;Z)V

    .line 774
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->bigData()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.server.ibs"

    const-string v2, "IBS"

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateChargingLocked(Z)V
    .registers 4

    const/16 v0, 0x8

    if-nez p1, :cond_f

    .line 468
    iget-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mCharging:Z

    if-eqz v1, :cond_f

    const/4 p1, 0x0

    .line 469
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mCharging:Z

    .line 470
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    goto :goto_17

    :cond_f
    if-eqz p1, :cond_17

    const/4 p1, 0x1

    .line 472
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mCharging:Z

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    :cond_17
    :goto_17
    return-void
.end method

.method public updateDisplayLocked()V
    .registers 6

    .line 478
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mCurDisplay:Landroid/view/Display;

    .line 482
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    const/4 v3, 0x4

    if-nez v0, :cond_21

    .line 483
    iget-boolean v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    if-eqz v4, :cond_21

    .line 484
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    .line 485
    invoke-virtual {p0, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    goto :goto_28

    :cond_21
    if-eqz v0, :cond_28

    .line 487
    iput-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    .line 488
    invoke-virtual {p0, v3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    :cond_28
    :goto_28
    return-void
.end method

.method public final updateFastDrainInternalState()V
    .registers 8

    .line 654
    iget v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    const-string/jumbo v1, "move to off state"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x1

    const/16 v6, 0xf

    packed-switch v0, :pswitch_data_de

    goto/16 :goto_dd

    .line 707
    :pswitch_11
    invoke-virtual {p0, v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 708
    invoke-virtual {p0, v1, v3, v5}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 709
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V

    goto/16 :goto_dd

    .line 682
    :pswitch_1f
    invoke-virtual {p0, v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 683
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSafeCheckTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-string/jumbo v1, "move to off state from safe check"

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    goto/16 :goto_dd

    .line 684
    :cond_2f
    invoke-virtual {p0, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-nez v0, :cond_42

    .line 685
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSafeCheckTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-string/jumbo v1, "move to off state from safe check, device move"

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 687
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateFastDrainInternalState()V

    goto/16 :goto_dd

    :cond_42
    const/16 v0, 0x60

    .line 688
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 689
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_55

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSafeCheckTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v1, :cond_55

    .line 690
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_55
    const/4 v0, 0x6

    .line 692
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 693
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    const-string/jumbo v0, "move to battery check state"

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    goto/16 :goto_dd

    .line 674
    :pswitch_62
    invoke-virtual {p0, v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-nez v0, :cond_71

    .line 675
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-string/jumbo v1, "move to off state from motion"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    goto :goto_dd

    .line 676
    :cond_71
    invoke-virtual {p0, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 677
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mMotionTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-string/jumbo v1, "move to off state from motion, device move"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 678
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateFastDrainInternalState()V

    goto :goto_dd

    .line 667
    :pswitch_83
    invoke-virtual {p0, v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-nez v0, :cond_92

    .line 668
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInactiveTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-string/jumbo v1, "move to off state from inactive"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    goto :goto_dd

    :cond_92
    const-string p0, "IntelligentBatterySaverFastDrainPolicy"

    const-string v0, " extra bits report in inactive state!"

    .line 670
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    .line 656
    :pswitch_9a
    invoke-virtual {p0, v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-eqz v0, :cond_dd

    const/4 v0, 0x3

    .line 657
    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 658
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    const-string/jumbo v1, "move to inactive"

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->checkIdle()Z

    move-result v0

    if-eqz v0, :cond_b7

    const-wide/16 v0, 0x0

    .line 660
    invoke-virtual {p0, v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->scheduleInactiveTimeoutAlarm(J)V

    goto :goto_dd

    :cond_b7
    const-wide/32 v0, 0xdbba0

    .line 662
    invoke-virtual {p0, v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->scheduleInactiveTimeoutAlarm(J)V

    goto :goto_dd

    .line 697
    :pswitch_be
    invoke-virtual {p0, v6}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 698
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->exitFastDrainRestriction()V

    .line 699
    invoke-virtual {p0, v1, v3, v5}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    goto :goto_dd

    .line 700
    :cond_cb
    invoke-virtual {p0, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 701
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->exitFastDrainRestriction()V

    const-string/jumbo v0, "move to off state, device move"

    .line 702
    invoke-virtual {p0, v0, v3, v5}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->moveToStateOFF(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Z)V

    .line 703
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateFastDrainInternalState()V

    :cond_dd
    :goto_dd
    return-void

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_be
        :pswitch_9a
        :pswitch_83
        :pswitch_62
        :pswitch_1f
        :pswitch_11
    .end packed-switch
.end method

.method public final updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V
    .registers 14

    if-eqz p1, :cond_7e

    .line 533
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEndTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    invoke-virtual {v0, p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p2

    goto :goto_15

    .line 534
    :cond_f
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mStartTime:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;

    invoke-virtual {v0, p2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p2

    .line 535
    :goto_15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0xc

    const-string v1, ":"

    const/16 v2, 0xb

    const-string v3, "IntelligentBatterySaverFastDrainPolicy"

    const/4 v4, 0x2

    if-eqz p1, :cond_4a

    .line 536
    invoke-virtual {p0, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In Active Duration, set inactive alarm at "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 540
    :cond_4a
    invoke-virtual {p0, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    .line 541
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out Active Duration, set active alarm at "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_6f
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v9, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v10, 0x0

    const-string v8, "IntelligentBatterySaverFastDrainPolicy"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_7e
    return-void
.end method
