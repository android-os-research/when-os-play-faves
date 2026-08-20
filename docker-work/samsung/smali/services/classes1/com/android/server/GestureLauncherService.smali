.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;,
        Lcom/android/server/GestureLauncherService$GestureEventListener;,
        Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    }
.end annotation


# static fields
.field public static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final CAMERA_POWER_TAP_COUNT_THRESHOLD:I = 0x2

.field public static final DBG:Z = false

.field public static final DBG_CAMERA_LIFT:Z = false

.field public static final EMERGENCY_GESTURE_POWER_BUTTON_COOLDOWN_PERIOD_MS_DEFAULT:I = 0xbb8

.field public static final EMERGENCY_GESTURE_POWER_BUTTON_COOLDOWN_PERIOD_MS_MAX:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EMERGENCY_GESTURE_POWER_TAP_COUNT_THRESHOLD:I = 0x5

.field public static final EMERGENCY_GESTURE_TAP_DETECTION_MIN_TIME_MS:I = 0xa0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_LAUNCH_EMERGENCY_VIA_GESTURE:Ljava/lang/String; = "launch_emergency_via_gesture"

.field public static final POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS:J = 0x1f4L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "GestureLauncherService"

.field public static final WEAR_LAUNCH_EMERGENCY_ACTION:Ljava/lang/String; = "com.android.systemui.action.LAUNCH_EMERGENCY"

.field public static final WEAR_LAUNCH_EMERGENCY_RETAIL_ACTION:Ljava/lang/String; = "com.android.systemui.action.LAUNCH_EMERGENCY_RETAIL"


# instance fields
.field public mCameraDoubleTapPowerEnabled:Z

.field public mCameraGestureLastEventTime:J

.field public mCameraGestureOnTimeMs:J

.field public mCameraGestureSensor1LastOnTimeMs:J

.field public mCameraGestureSensor2LastOnTimeMs:J

.field public mCameraLaunchLastEventExtra:I

.field public mCameraLaunchRegistered:Z

.field public mCameraLaunchSensor:Landroid/hardware/Sensor;

.field public mCameraLiftRegistered:Z

.field public final mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

.field public mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

.field public mContext:Landroid/content/Context;

.field public mEmergencyGestureEnabled:Z

.field public mEmergencyGesturePowerButtonCooldownPeriodMs:I

.field public mFirstPowerDown:J

.field public final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field public mHasFeatureWatch:Z

.field public mLastEmergencyGestureTriggered:J

.field public mLastPowerDown:J

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mPowerButtonConsecutiveTaps:I

.field public mPowerButtonSlowConsecutiveTaps:I

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mSettingObserver:Landroid/database/ContentObserver;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUserId:I

.field public final mUserReceiver:Landroid/content/BroadcastReceiver;

.field public mVibrateMilliSecondsForPanicGesture:J

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCameraGestureLastEventTime(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraGestureOnTimeMs(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraGestureSensor1LastOnTimeMs(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraGestureSensor2LastOnTimeMs(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLaunchLastEventExtra(Lcom/android/server/GestureLauncherService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLaunchRegistered(Lcom/android/server/GestureLauncherService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLaunchSensor(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLiftRegistered(Lcom/android/server/GestureLauncherService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLiftTriggerListener(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraLiftTriggerSensor(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsLogger(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingObserver(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiEventLogger(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/UiEventLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/GestureLauncherService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/GestureLauncherService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCameraGestureLastEventTime(Lcom/android/server/GestureLauncherService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCameraGestureSensor1LastOnTimeMs(Lcom/android/server/GestureLauncherService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCameraGestureSensor2LastOnTimeMs(Lcom/android/server/GestureLauncherService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCameraLaunchLastEventExtra(Lcom/android/server/GestureLauncherService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCameraLiftRegistered(Lcom/android/server/GestureLauncherService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserId(Lcom/android/server/GestureLauncherService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterContentObservers(Lcom/android/server/GestureLauncherService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCameraRegistered(Lcom/android/server/GestureLauncherService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 229
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    new-instance v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v1}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/GestureLauncherService;-><init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$GestureEventListener-IA;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 131
    new-instance v0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener-IA;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    const-wide/16 v0, 0x0

    .line 149
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 152
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 159
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 169
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 768
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 783
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 236
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 237
    iput-object p2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 238
    iput-object p3, p0, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public static getEmergencyGesturePowerButtonCooldownPeriodMs(Landroid/content/Context;I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "emergency_gesture_power_button_cooldown_period_ms"

    const/16 v0, 0xbb8

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/16 p1, 0x1388

    .line 484
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const v0, 0x111004a

    .line 499
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 452
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_double_tap_power_gesture_disabled"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .registers 4

    const v0, 0x10e0048

    .line 491
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_e

    move p0, v0

    goto :goto_f

    :cond_e
    move p0, v1

    :goto_f
    if-eqz p0, :cond_1a

    const-string p0, "gesture.disable_camera_launch"

    .line 494
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    return v0
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_gesture_disabled"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    const v0, 0x10e0049

    .line 504
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_lift_trigger_enabled"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public static isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    const v0, 0x111012c

    .line 513
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "emergency_gesture_enabled"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    .line 520
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 521
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 522
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 523
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureEnabled(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method


# virtual methods
.method public handleCameraGesture(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0, v0, p1}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result p0

    return p0
.end method

.method public handleCameraGesture(ZI)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x40

    const-string v2, "GestureLauncher:handleCameraGesture"

    .line 665
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 667
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_28

    if-nez v2, :cond_12

    const/4 p0, 0x0

    .line 691
    :goto_e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_12
    if-eqz p1, :cond_1b

    .line 684
    :try_start_14
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 686
    :cond_1b
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 688
    invoke-interface {p0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_28

    const/4 p0, 0x1

    goto :goto_e

    :catchall_28
    move-exception p0

    .line 691
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 692
    throw p0
.end method

.method public handleEmergencyGesture()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x40

    const-string v2, "GestureLauncher:handleEmergencyGesture"

    .line 700
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 703
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_2d

    if-nez v2, :cond_12

    const/4 p0, 0x0

    .line 728
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 718
    :cond_12
    :try_start_12
    iget-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mHasFeatureWatch:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    .line 719
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->onEmergencyGestureDetectedOnWatch()V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_2d

    .line 728
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    .line 723
    :cond_1e
    :try_start_1e
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 725
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onEmergencyActionLaunchGestureDetected()V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2d

    .line 728
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :catchall_2d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 729
    throw p0
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .registers 19

    move-object v1, p0

    move-object/from16 v0, p3

    .line 535
    iget-boolean v2, v1, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_47

    iget v2, v1, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    if-ltz v2, :cond_47

    .line 536
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    sub-long/2addr v6, v8

    iget v2, v1, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    int-to-long v8, v2

    cmp-long v6, v6, v8

    if-gez v6, :cond_47

    const-string v6, "GestureLauncherService"

    const-string v7, "Suppressing power button: within %dms cooldown period after Emergency Gesture. Begin=%dms, end=%dms."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 541
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    iget-wide v9, v1, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    .line 542
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v5

    iget-wide v9, v1, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    iget v1, v1, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    int-to-long v1, v1

    add-long/2addr v9, v1

    .line 543
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v3

    .line 538
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iput-boolean v4, v0, Landroid/util/MutableBoolean;->value:Z

    return v5

    .line 548
    :cond_47
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 552
    iput-boolean v4, v0, Landroid/util/MutableBoolean;->value:Z

    return v4

    .line 559
    :cond_50
    monitor-enter p0

    .line 560
    :try_start_51
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long/2addr v6, v8

    .line 561
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    const-wide/16 v8, 0x1f4

    cmp-long v2, v6, v8

    const-wide/16 v8, 0x12c

    if-ltz v2, :cond_71

    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    .line 565
    iput v5, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 566
    iput v5, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_8d

    :cond_71
    cmp-long v2, v6, v8

    if-ltz v2, :cond_83

    .line 569
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    .line 570
    iput v5, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 571
    iget v2, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_8d

    .line 574
    :cond_83
    iget v2, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 575
    iget v2, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    .line 578
    :goto_8d
    iget-boolean v2, v1, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    if-eqz v2, :cond_10a

    .line 583
    iget v2, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 584
    iget-boolean v10, v1, Lcom/android/server/GestureLauncherService;->mHasFeatureWatch:Z

    const/4 v11, 0x5

    if-eqz v10, :cond_9a

    move v10, v11

    goto :goto_9b

    :cond_9a
    move v10, v5

    :goto_9b
    if-le v2, v10, :cond_a0

    move/from16 v10, p2

    goto :goto_a1

    :cond_a0
    move v10, v4

    :goto_a1
    if-ne v2, v11, :cond_108

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    sub-long/2addr v11, v13

    .line 589
    iget-object v2, v1, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 590
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v13, "emergency_gesture_tap_detection_min_time_ms"

    const/16 v14, 0xa0

    .line 589
    invoke-static {v2, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-long v13, v2

    cmp-long v2, v11, v13

    if-gtz v2, :cond_e3

    const-string v2, "GestureLauncherService"

    .line 594
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Emergency gesture detected but it\'s too fast. Gesture time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ms"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/GestureLauncherService;->mFirstPowerDown:J

    .line 598
    iput v5, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 599
    iput v5, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    goto :goto_108

    :cond_e3
    const-string v2, "GestureLauncherService"

    .line 601
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Emergency gesture detected. Gesture time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v2, v1, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v13, "emergency_gesture_spent_time"

    long-to-int v11, v11

    invoke-virtual {v2, v13, v11}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    move v2, v5

    goto :goto_10c

    :cond_108
    :goto_108
    move v2, v4

    goto :goto_10c

    :cond_10a
    move v2, v4

    move v10, v2

    .line 610
    :goto_10c
    iget-boolean v11, v1, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    if-eqz v11, :cond_11c

    cmp-long v8, v6, v8

    if-gez v8, :cond_11c

    iget v8, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-ne v8, v3, :cond_11c

    move/from16 v10, p2

    move v3, v5

    goto :goto_11d

    :cond_11c
    move v3, v4

    .line 616
    :goto_11d
    monitor-exit p0
    :try_end_11e
    .catchall {:try_start_51 .. :try_end_11e} :catchall_1cf

    .line 617
    iget v8, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-gt v8, v5, :cond_126

    iget v8, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    if-le v8, v5, :cond_152

    :cond_126
    const-string v8, "GestureLauncherService"

    .line 618
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " consecutive power button taps detected, "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    int-to-long v11, v11

    .line 620
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " consecutive slow power button taps detected"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 618
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_152
    if-eqz v3, :cond_186

    const-string v3, "GestureLauncherService"

    .line 624
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {p0, v4, v5}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v3

    if-eqz v3, :cond_1a8

    .line 629
    iget-object v8, v1, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v9, 0xff

    long-to-int v11, v6

    invoke-virtual {v8, v9, v11}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 631
    iget-object v8, v1, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v9, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_DOUBLE_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v8, v9}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_1a8

    :cond_186
    if-eqz v2, :cond_1a8

    const-string v2, "GestureLauncherService"

    const-string v8, "Emergency gesture detected, launching."

    .line 634
    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->handleEmergencyGesture()Z

    move-result v2

    .line 636
    iget-object v8, v1, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v9, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_EMERGENCY_TAP_POWER:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v8, v9}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    if-eqz v2, :cond_1a8

    .line 639
    monitor-enter p0

    .line 640
    :try_start_19d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/GestureLauncherService;->mLastEmergencyGestureTriggered:J

    .line 641
    monitor-exit p0

    goto :goto_1a8

    :catchall_1a5
    move-exception v0

    monitor-exit p0
    :try_end_1a7
    .catchall {:try_start_19d .. :try_end_1a7} :catchall_1a5

    throw v0

    .line 644
    :cond_1a8
    :goto_1a8
    iget-object v8, v1, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v9, "power_consecutive_short_tap_count"

    iget v11, v1, Lcom/android/server/GestureLauncherService;->mPowerButtonSlowConsecutiveTaps:I

    invoke-virtual {v8, v9, v11}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 646
    iget-object v8, v1, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v9, "power_double_tap_interval"

    long-to-int v6, v6

    invoke-virtual {v8, v9, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    if-nez v3, :cond_1c2

    if-eqz v2, :cond_1c0

    goto :goto_1c2

    :cond_1c0
    move v2, v4

    goto :goto_1c3

    :cond_1c2
    :goto_1c2
    move v2, v5

    .line 648
    :goto_1c3
    iput-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v10, :cond_1ce

    .line 651
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_1ce

    move v4, v5

    :cond_1ce
    return v4

    :catchall_1cf
    move-exception v0

    .line 616
    :try_start_1d0
    monitor-exit p0
    :try_end_1d1
    .catchall {:try_start_1d0 .. :try_end_1d1} :catchall_1cf

    throw v0
.end method

.method public final isInRetailMode()Z
    .registers 3

    .line 759
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_demo_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method public final isUserSetupComplete()Z
    .registers 4

    .line 764
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public onBootPhase(I)V
    .registers 6

    const/16 v0, 0x258

    if-ne p1, v0, :cond_6c

    .line 249
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 250
    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 255
    :cond_11
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 256
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "GestureLauncherService"

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 260
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 261
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 262
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGestureEnabled()V

    .line 263
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyGesturePowerButtonCooldownPeriodMs()V

    .line 265
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 266
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 269
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mHasFeatureWatch:Z

    const v0, 0x10e00c2

    .line 272
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mVibrateMilliSecondsForPanicGesture:J

    :cond_6c
    return-void
.end method

.method public final onEmergencyGestureDetectedOnWatch()V
    .registers 7

    .line 733
    new-instance v0, Landroid/content/Intent;

    .line 735
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->isInRetailMode()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "com.android.systemui.action.LAUNCH_EMERGENCY_RETAIL"

    goto :goto_d

    :cond_b
    const-string v1, "com.android.systemui.action.LAUNCH_EMERGENCY"

    .line 737
    :goto_d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 739
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_38

    .line 741
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find an app to process the emergency intent "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GestureLauncherService"

    .line 741
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 746
    :cond_38
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 747
    iget-wide v3, p0, Lcom/android/server/GestureLauncherService;->mVibrateMilliSecondsForPanicGesture:J

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 750
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 753
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string/jumbo v2, "launch_emergency_via_gesture"

    .line 754
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 755
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 243
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .registers 6

    .line 358
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 361
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 362
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 363
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const v1, 0x10e0048

    .line 365
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_63

    const/4 v2, 0x0

    .line 368
    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    const v3, 0x10402fd

    .line 369
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    .line 371
    invoke-virtual {v0, v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_63

    .line 379
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 380
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    goto :goto_63

    :cond_4a
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 383
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 385
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    .line 383
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 386
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_63
    :goto_63
    return-void
.end method

.method public final registerCameraLiftTrigger(Landroid/content/res/Resources;)V
    .registers 6

    .line 409
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 412
    :cond_5
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const v1, 0x10e0049

    .line 414
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5b

    const/4 v2, 0x0

    .line 417
    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    const v3, 0x10402fe

    .line 418
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    .line 420
    invoke-virtual {v0, v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_5b

    .line 428
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 429
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    goto :goto_5b

    :cond_42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 432
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 434
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    .line 432
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 435
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final registerContentObservers()V
    .registers 6

    .line 282
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_gesture_disabled"

    .line 283
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    const/4 v4, 0x0

    .line 282
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 285
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    .line 286
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 285
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 288
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_lift_trigger_enabled"

    .line 289
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 288
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 291
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_gesture_enabled"

    .line 292
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 291
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 294
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_gesture_power_button_cooldown_period_ms"

    .line 295
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 294
    invoke-virtual {v0, v1, v4, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final unregisterCameraLaunchGesture()V
    .registers 4

    .line 340
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    const-wide/16 v1, 0x0

    .line 342
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 343
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 344
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 345
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 346
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 348
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 350
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_23
    return-void
.end method

.method public final unregisterCameraLiftTrigger()V
    .registers 3

    .line 396
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 399
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 401
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    :cond_19
    return-void
.end method

.method public updateCameraDoubleTapPowerEnabled()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 318
    monitor-enter p0

    .line 319
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    .line 320
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final updateCameraRegistered()V
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    goto :goto_17

    .line 305
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    .line 308
    :goto_17
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLiftTrigger(Landroid/content/res/Resources;)V

    goto :goto_28

    .line 311
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLiftTrigger()V

    :goto_28
    return-void
.end method

.method public updateEmergencyGestureEnabled()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 326
    monitor-enter p0

    .line 327
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGestureEnabled:Z

    .line 328
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public updateEmergencyGesturePowerButtonCooldownPeriodMs()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->getEmergencyGesturePowerButtonCooldownPeriodMs(Landroid/content/Context;I)I

    move-result v0

    .line 334
    monitor-enter p0

    .line 335
    :try_start_9
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mEmergencyGesturePowerButtonCooldownPeriodMs:I

    .line 336
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method
