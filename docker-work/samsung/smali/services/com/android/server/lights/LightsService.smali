.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$SvcLEDHandler;,
        Lcom/android/server/lights/LightsService$SvcLEDReceiver;,
        Lcom/android/server/lights/LightsService$VintfExtHalCache;,
        Lcom/android/server/lights/LightsService$VintfHalCache;,
        Lcom/android/server/lights/LightsService$LightImpl;,
        Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field public static final DEBUG:Z = false

.field public static final LIGHT_SEC_FLASH:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field public static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field public static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field public static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field public static final MSG_FORCEDSVCLEDTASK:I = 0x1

.field public static final SVCLED_BATTERY_MASK:I = 0x39

.field public static final SVCLED_CHARGING:I = 0x8

.field public static final SVCLED_CHARGING_ERROR:I = 0x1

.field public static final SVCLED_FULLY_CHARGED:I = 0x20

.field public static final SVCLED_LOW_BATTERY:I = 0x10

.field public static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field public static final SVCLED_MODE_COUNT:I = 0x6

.field public static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field public static final SVCLED_OFF:I = 0x0

.field public static final SVCLED_OTHERS:I = 0x4

.field public static final TAG:Ljava/lang/String; = "LightsService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TAG_LED:Ljava/lang/String; = "[SvcLED] "

.field public static mPrevSvcLedState:I

.field public static mSvcLedColor:I

.field public static mSvcLedMode:I

.field public static mSvcLedOffMS:I

.field public static mSvcLedOnMS:I

.field public static mSvcLedState:I


# instance fields
.field public final LED_LOW_POWER_PATH:Ljava/lang/String;

.field public isLightSensorEnabled:Z

.field public mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

.field public mCoverOpened:Z

.field public mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field public mCoverType:I

.field public mDelayForcedSvcLEDTask:I

.field public mH:Landroid/os/Handler;

.field public mInitCompleteForSvcLED:Z

.field public mInitializedWakeLockPath:Z

.field public mIsLEDChanged:Z

.field public mLastSvcLedId:I

.field public mLedLowPower:I

.field public mLightListener:Landroid/hardware/SensorEventListener;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/lights/LightsService$LightImpl;",
            ">;"
        }
    .end annotation
.end field

.field public final mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

.field public final mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mNewWakeLockPaths:[Ljava/lang/String;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mService:Lcom/android/server/lights/LightsManager;

.field public mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

.field public final mSvcLEDThread:Landroid/os/HandlerThread;

.field public mUpdateSvcLEDDelay:I

.field public mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field public mUseLEDAutoBrightness:Z

.field public mUsePatternLED:Z

.field public mUseSoftwareAutoBrightness:Z

.field public final mVintfLights:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/light/ILights;",
            ">;"
        }
    .end annotation
.end field

.field public final mVintfSehLights:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lvendor/samsung/hardware/light/ISehLights;",
            ">;"
        }
    .end annotation
.end field

.field public mWakeLockAcquired:Z

.field public mWakeLockPath:Ljava/lang/String;

.field public mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmManagerForSvcLED(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/lights/LightsService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverBatteryLight(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverNotiLight(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverOpened(Lcom/android/server/lights/LightsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverType(Lcom/android/server/lights/LightsService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayForcedSvcLEDTask(Lcom/android/server/lights/LightsService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmH(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsLEDChanged(Lcom/android/server/lights/LightsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightsByType(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSvcLEDThread(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateSvcLEDDelay(Lcom/android/server/lights/LightsService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateSvcLEDPendingIntent(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseLEDAutoBrightness(Lcom/android/server/lights/LightsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsePatternLED(Lcom/android/server/lights/LightsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseSoftwareAutoBrightness(Lcom/android/server/lights/LightsService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVintfSehLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCoverBatteryLight(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LogicalLight;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverNotiLight(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LogicalLight;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverOpened(Lcom/android/server/lights/LightsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverType(Lcom/android/server/lights/LightsService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDelayForcedSvcLEDTask(Lcom/android/server/lights/LightsService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInitCompleteForSvcLED(Lcom/android/server/lights/LightsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsLEDChanged(Lcom/android/server/lights/LightsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSvcLEDHandler(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUseLEDAutoBrightness(Lcom/android/server/lights/LightsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUsePatternLED(Lcom/android/server/lights/LightsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUseSoftwareAutoBrightness(Lcom/android/server/lights/LightsService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearSvcLedStateLocked(Lcom/android/server/lights/LightsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menableSvcLEDLightSensorLocked(Lcom/android/server/lights/LightsService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetVrDisplayMode(Lcom/android/server/lights/LightsService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleForcedSvcLEDTask(Lcom/android/server/lights/LightsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->handleForcedSvcLEDTask()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSvcLedLightLocked(Lcom/android/server/lights/LightsService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSvcLedStateLocked(Lcom/android/server/lights/LightsService;IIIIIZ)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmSvcLedState()I
    .registers 1

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smcallerInfoToString()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 738
    new-instance v0, Lcom/android/server/lights/LightsService$VintfHalCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>(Lcom/android/server/lights/LightsService$VintfHalCache-IA;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/lights/LightsService$VintfExtHalCache;

    invoke-direct {v3, v1}, Lcom/android/server/lights/LightsService$VintfExtHalCache;-><init>(Lcom/android/server/lights/LightsService$VintfExtHalCache-IA;)V

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/light/ILights;",
            ">;",
            "Landroid/os/Looper;",
            "Ljava/util/function/Supplier<",
            "Lvendor/samsung/hardware/light/ISehLights;",
            ">;)V"
        }
    .end annotation

    .line 745
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    const/16 v1, 0x2bc

    .line 113
    iput v1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 124
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    const v2, 0x927c0

    .line 126
    iput v2, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    const/4 v2, 0x0

    .line 129
    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 130
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    const/4 v3, 0x2

    .line 131
    iput v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 164
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    const-string v3, "/sys/power/wake_lock"

    const-string v4, "/sys/power/wake_unlock"

    .line 167
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    .line 168
    aget-object v4, v3, v0

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 169
    aget-object v1, v3, v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 170
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/lights/LightsService$LightImpl;

    .line 174
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 175
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 865
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 988
    new-instance v1, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 1013
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    .line 1033
    new-instance v1, Lcom/android/server/lights/LightsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$4;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    const-string v1, "/sys/class/sec/led/led_lowpower"

    .line 1082
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->LED_LOW_POWER_PATH:Ljava/lang/String;

    const/4 v1, -0x1

    .line 1083
    iput v1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const/4 v1, 0x3

    .line 1084
    iput v1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 1208
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 746
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 747
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_70

    goto :goto_71

    :cond_70
    move-object p2, v2

    :goto_71
    iput-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 748
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object p4, v2

    :goto_7b
    iput-object p4, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLights(Landroid/content/Context;)V

    .line 751
    new-instance p2, Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {p2, p0, v2}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$LightsManagerBinderService-IA;)V

    iput-object p2, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    .line 754
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 755
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    .line 756
    new-instance p1, Lcom/android/server/lights/LightsService$1;

    const-string/jumbo p2, "mSvcLEDThread"

    invoke-direct {p1, p0, p2}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    .line 783
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 784
    monitor-enter p1

    .line 785
    :catch_99
    :goto_99
    :try_start_99
    iget-boolean p2, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_9b
    .catchall {:try_start_99 .. :try_end_9b} :catchall_a5

    if-nez p2, :cond_a3

    .line 787
    :try_start_9d
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_a2
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_a2} :catch_99
    .catchall {:try_start_9d .. :try_end_a2} :catchall_a5

    goto :goto_99

    .line 792
    :cond_a3
    :try_start_a3
    monitor-exit p1

    return-void

    :catchall_a5
    move-exception p0

    monitor-exit p1
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_a5

    throw p0
.end method

.method public static callerInfoToString()Ljava/lang/String;
    .registers 4

    .line 1416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1417
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native setLight_native(IIIIII)V
.end method


# virtual methods
.method public final acquireWakeLockForLED()V
    .registers 3

    .line 1211
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const-string v1, "LightsService"

    if-nez v0, :cond_c

    const-string p0, "acquireWakeLockForLED : WakeLock path is not initialized"

    .line 1212
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1216
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-nez v0, :cond_18

    .line 1220
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1221
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    :cond_18
    return-void
.end method

.method public final clearSvcLedStateLocked(I)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    .line 1252
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method public convertToBitMask(I)I
    .registers 2

    packed-switch p1, :pswitch_data_12

    :pswitch_3
    const/16 p0, -0x3a

    return p0

    :pswitch_6
    const/16 p0, 0x20

    return p0

    :pswitch_9
    const/16 p0, 0x10

    return p0

    :pswitch_c
    const/4 p0, 0x1

    return p0

    :pswitch_e
    const/16 p0, 0x8

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0xa
        :pswitch_e
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public final enableSvcLEDLightSensorLocked(Z)V
    .registers 5

    .line 1015
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_9

    goto :goto_2b

    :cond_9
    if-eqz p1, :cond_1f

    .line 1019
    sget p1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz p1, :cond_1f

    .line 1020
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-nez p1, :cond_2b

    .line 1021
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 p1, 0x1

    .line 1022
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    goto :goto_2b

    .line 1025
    :cond_1f
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-eqz p1, :cond_2b

    .line 1026
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 1027
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final getVrDisplayMode()I
    .registers 4

    .line 858
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 859
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "vr_display_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final handleForcedSvcLEDTask()V
    .registers 3

    const-string v0, "LightsService"

    const-string v1, "[SvcLED] handleForcedSvcLEDTask()"

    .line 1162
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1163
    invoke-virtual {p0, v0}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    const/16 v0, 0x13

    .line 1164
    invoke-virtual {p0, v0}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method public final initCoverState()V
    .registers 4

    const-string v0, "LightsService"

    const-string/jumbo v1, "initCoverState()start"

    .line 970
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_3d

    .line 972
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 974
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    iput v2, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 975
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initCoverState() coverstate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    const-string/jumbo p0, "initCoverState() : state is null"

    .line 979
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3d
    const-string/jumbo p0, "initCoverState() : mCoverManager is null!!!!"

    .line 983
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initializeWakeLockPath()V
    .registers 4

    .line 1187
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_36

    .line 1189
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "LightsService"

    if-eqz v0, :cond_30

    .line 1190
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1197
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1198
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 1204
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    goto :goto_36

    :cond_29
    const-string/jumbo p0, "wake_unlock path does not exists "

    .line 1200
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    const-string/jumbo p0, "wake_lock path does not exists"

    .line 1192
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7

    .line 853
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->systemReady()V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 846
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 847
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    const-string/jumbo v1, "lights"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final populateAvailableLights(Landroid/content/Context;)V
    .registers 5

    .line 799
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    if-eqz v0, :cond_8

    .line 801
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromAidl(Landroid/content/Context;)V

    goto :goto_b

    .line 803
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromHidl(Landroid/content/Context;)V

    .line 806
    :goto_b
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_13
    if-ltz p1, :cond_37

    .line 809
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-static {v0}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$fgetmHwLight(Lcom/android/server/lights/LightsService$LightImpl;)Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object v0

    iget v0, v0, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    if-ltz v0, :cond_34

    .line 811
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    array-length v2, v1

    if-ge v0, v2, :cond_34

    .line 812
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsService$LightImpl;

    aput-object v2, v1, v0

    :cond_34
    add-int/lit8 p1, p1, -0x1

    goto :goto_13

    :cond_37
    return-void
.end method

.method public final populateAvailableLightsFromAidl(Landroid/content/Context;)V
    .registers 10

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/light/ISehLights;

    invoke-interface {v0}, Lvendor/samsung/hardware/light/ISehLights;->getLights()[Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 823
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    iget v5, v3, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    new-instance v6, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v3, v7}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Lvendor/samsung/hardware/light/SehHwLight;Lcom/android/server/lights/LightsService$LightImpl-IA;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catch_22
    move-exception p0

    const-string p1, "LightsService"

    const-string v0, "Unable to get lights from HAL"

    .line 826
    invoke-static {p1, v0, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    return-void
.end method

.method public final populateAvailableLightsFromHidl(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public final releaseWakeLockForLED()V
    .registers 4

    .line 1228
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const-string v1, "LightsService"

    if-nez v0, :cond_d

    const-string/jumbo p0, "releaseWakeLockForLED: WakeLock path is not initialized"

    .line 1229
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1233
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1237
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1238
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    :cond_22
    return-void
.end method

.method public final setSvcLedLightLocked(I)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x14

    if-ge p1, v2, :cond_8

    move p1, v1

    goto :goto_9

    :cond_8
    move p1, v0

    :goto_9
    if-ne p1, v1, :cond_16

    .line 1090
    iget-boolean v2, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    if-eq v2, v1, :cond_16

    iget v2, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_16

    move p1, v0

    .line 1094
    :cond_16
    iget-boolean v2, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    if-eq p1, v2, :cond_27

    .line 1095
    iput p1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const-string v2, "/sys/class/sec/led/led_lowpower"

    .line 1096
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1097
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    :cond_27
    move p1, v0

    :goto_28
    const/4 v2, 0x6

    if-ge p1, v2, :cond_35

    .line 1104
    sget v2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    shr-int/2addr v2, p1

    and-int/2addr v2, v1

    if-eqz v2, :cond_32

    goto :goto_35

    :cond_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    .line 1111
    :cond_35
    :goto_35
    sget v2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-nez v2, :cond_40

    .line 1112
    iget v3, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    :goto_3e
    move v8, v0

    goto :goto_63

    :cond_40
    if-eqz p1, :cond_5f

    if-eq p1, v1, :cond_5a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_57

    if-eq p1, v5, :cond_54

    if-eq p1, v4, :cond_51

    if-eq p1, v3, :cond_4e

    goto :goto_3e

    :cond_4e
    const/16 v0, 0xe

    goto :goto_61

    :cond_51
    const/16 v0, 0xd

    goto :goto_61

    :cond_54
    const/16 v0, 0xa

    goto :goto_61

    .line 1126
    :cond_57
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    goto :goto_5c

    :cond_5a
    const/16 v0, 0xc

    :goto_5c
    move v8, v0

    move v3, v4

    goto :goto_63

    :cond_5f
    const/16 v0, 0xb

    :goto_61
    move v8, v0

    move v3, v5

    .line 1147
    :goto_63
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v6, p1, v3

    sget v7, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sget v9, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sget v10, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$msetLightLocked(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    .line 1149
    iget p1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    const-string v0, "LightsService"

    if-eq p1, v3, :cond_a3

    .line 1150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SvcLED] setSvcLedLightLocked : priority changed! SvcLED("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    invoke-virtual {p0, v1}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") OUT; ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {p0, v3}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") IN"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1150
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 1153
    :cond_a3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SvcLED] setSvcLedLightLocked : Current SvcLED("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") maintains its priority right"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_c0
    iput v3, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 1157
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->releaseWakeLockForLED()V

    return-void
.end method

.method public final setSvcLedStateLocked(IIIIIZ)V
    .registers 16

    .line 1256
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    const/4 v1, 0x3

    const-string v2, "LightsService"

    if-eq p1, v1, :cond_3f

    const/4 v1, 0x4

    if-eq p1, v1, :cond_25

    .line 1275
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[SvcLED] setSvcLedStateLocked : Not Support, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_25
    if-eqz p6, :cond_3a

    const/16 v1, 0xc

    if-ne p3, v1, :cond_30

    or-int/lit8 p2, v0, 0x2

    .line 1266
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_4c

    :cond_30
    const/4 v4, 0x4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 1268
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->writeSvcLedData(IIIII)V

    goto :goto_4c

    :cond_3a
    and-int/lit8 p2, v0, -0x7

    .line 1271
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_4c

    :cond_3f
    and-int/lit8 p2, v0, -0x3a

    .line 1260
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz p6, :cond_4c

    .line 1261
    invoke-virtual {p0, p3}, Lcom/android/server/lights/LightsService;->convertToBitMask(I)I

    move-result p3

    or-int/2addr p2, p3

    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1278
    :cond_4c
    :goto_4c
    sget p2, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    sget p3, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eq p2, p3, :cond_55

    const/4 p2, 0x1

    .line 1279
    iput-boolean p2, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 1282
    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[SvcLED] setSvcLedStateLocked : SvcLEDState: 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -> 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1283
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " | SvcLED("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") set "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_8c

    const-string p0, "On"

    goto :goto_8e

    :cond_8c
    const-string p0, "Off"

    :goto_8e
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1282
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public systemReady()V
    .registers 8

    const-string v0, "LightsService"

    const-string v1, "[SvcLED] systemReady"

    .line 938
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 940
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 941
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 944
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 945
    iget-boolean v4, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v4, :cond_40

    const/4 v4, 0x5

    .line 946
    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    .line 950
    :cond_40
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 951
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->initCoverState()V

    .line 952
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_56

    .line 953
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_5c

    :cond_56
    const-string/jumbo v1, "initLightsService() : mCoverManager is null!!!!"

    .line 955
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_5c
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->initializeWakeLockPath()V

    .line 962
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 963
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    invoke-direct {v2, p0, v3}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDReceiver-IA;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public translateID(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_26

    :pswitch_3
    const-string/jumbo p0, "translateID error"

    return-object p0

    :pswitch_7
    const-string p0, "COUNT"

    return-object p0

    :pswitch_a
    const-string p0, "SUB_BACKLIGHT"

    return-object p0

    :pswitch_d
    const-string p0, "WIFI"

    return-object p0

    :pswitch_10
    const-string p0, "BLUETOOTH"

    return-object p0

    :pswitch_13
    const-string p0, "ATTENTION"

    return-object p0

    :pswitch_16
    const-string p0, "NOTIFICATIONS"

    return-object p0

    :pswitch_19
    const-string p0, "BATTERY"

    return-object p0

    :pswitch_1c
    const-string p0, "BUTTON"

    return-object p0

    :pswitch_1f
    const-string p0, "KEYBOARD"

    return-object p0

    :pswitch_22
    const-string p0, "BACKLIGHT"

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public translateLightType(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_22

    :pswitch_3
    const-string/jumbo p0, "translateLightType error"

    return-object p0

    :pswitch_7
    const-string p0, "SUB_BACKLIGHT"

    return-object p0

    :pswitch_a
    const-string p0, "WIFI"

    return-object p0

    :pswitch_d
    const-string p0, "BLUETOOTH"

    return-object p0

    :pswitch_10
    const-string p0, "ATTENTION"

    return-object p0

    :pswitch_13
    const-string p0, "NOTIFICATIONS"

    return-object p0

    :pswitch_16
    const-string p0, "BATTERY"

    return-object p0

    :pswitch_19
    const-string p0, "BUTTON"

    return-object p0

    :pswitch_1c
    const-string p0, "KEYBOARD"

    return-object p0

    :pswitch_1f
    const-string p0, "BACKLIGHT"

    return-object p0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public translateMode(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_24

    const/4 p0, 0x1

    if-eq p1, p0, :cond_21

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1e

    packed-switch p1, :pswitch_data_28

    const-string/jumbo p0, "translateMode error"

    return-object p0

    :pswitch_f
    const-string p0, "LIGHT_SEC_FLASH_FULLY_CHARGED"

    return-object p0

    :pswitch_12
    const-string p0, "LIGHT_SEC_FLASH_LOW_BATTERY"

    return-object p0

    :pswitch_15
    const-string p0, "LIGHT_SEC_FLASH_MISSED_NOTIFICATION"

    return-object p0

    :pswitch_18
    const-string p0, "LIGHT_SEC_FLASH_CHARGING_ERROR"

    return-object p0

    :pswitch_1b
    const-string p0, "LIGHT_SEC_FLASH_CHARGING"

    return-object p0

    :cond_1e
    const-string p0, "LIGHT_FLASH_HARDWARE"

    return-object p0

    :cond_21
    const-string p0, "LIGHT_FLASH_TIMED"

    return-object p0

    :cond_24
    const-string p0, "LIGHT_FLASH_NONE"

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0xa
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public writeSvcLedData(IIIII)V
    .registers 6

    .line 1402
    sget p0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/2addr p0, p1

    sput p0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1403
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    .line 1404
    sput p3, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 1405
    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    .line 1406
    sput p5, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    return-void
.end method
