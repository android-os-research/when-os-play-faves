.class public Landroid/hardware/scontext/SContextEvent;
.super Ljava/lang/Object;
.source "SContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDuplicatedEventContext:Landroid/hardware/scontext/SContextEventContext;

.field private blacklist mEventContext:Landroid/hardware/scontext/SContextEventContext;

.field public blacklist scontext:Landroid/hardware/scontext/SContext;

.field public blacklist timestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 984
    new-instance v0, Landroid/hardware/scontext/SContextEvent$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 972
    const-class v0, Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 973
    const-class v0, Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextEventContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 974
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_3a

    .line 975
    const-class v0, Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextEventContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mDuplicatedEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 977
    :cond_3a
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 940
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAbnormalPressureContext()Landroid/hardware/scontext/SContextAbnormalPressure;
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextAbnormalPressure;

    return-object v0
.end method

.method public blacklist getActiveTimeMonitorContext()Landroid/hardware/scontext/SContextActiveTimeMonitor;
    .registers 2

    .line 485
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActiveTimeMonitor;

    return-object v0
.end method

.method public blacklist getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;
    .registers 2

    .line 394
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActivityBatch;

    return-object v0
.end method

.method public blacklist getActivityLocationLoggingContext()Landroid/hardware/scontext/SContextActivityLocationLogging;
    .registers 2

    .line 374
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActivityLocationLogging;

    return-object v0
.end method

.method public blacklist getActivityNotificationContext()Landroid/hardware/scontext/SContextActivityNotification;
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActivityNotification;

    return-object v0
.end method

.method public blacklist getActivityNotificationExContext()Landroid/hardware/scontext/SContextActivityNotificationEx;
    .registers 2

    .line 440
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActivityNotificationEx;

    return-object v0
.end method

.method public blacklist getActivityTrackerContext()Landroid/hardware/scontext/SContextActivityTracker;
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextActivityTracker;

    return-object v0
.end method

.method public blacklist getAirMotionContext()Landroid/hardware/scontext/SContextAirMotion;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextAirMotion;

    return-object v0
.end method

.method public blacklist getAnyMotionDetectorContext()Landroid/hardware/scontext/SContextAnyMotionDetector;
    .registers 2

    .line 641
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextAnyMotionDetector;

    return-object v0
.end method

.method public blacklist getApproachContext()Landroid/hardware/scontext/SContextApproach;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextApproach;

    return-object v0
.end method

.method public blacklist getAutoBrightnessContext()Landroid/hardware/scontext/SContextAutoBrightness;
    .registers 2

    .line 517
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextAutoBrightness;

    return-object v0
.end method

.method public blacklist getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextAutoRotation;

    return-object v0
.end method

.method public blacklist getBounceLongMotionContext()Landroid/hardware/scontext/SContextBounceLongMotion;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextBounceLongMotion;

    return-object v0
.end method

.method public blacklist getBounceShortMotionContext()Landroid/hardware/scontext/SContextBounceShortMotion;
    .registers 2

    .line 279
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextBounceShortMotion;

    return-object v0
.end method

.method blacklist getCallMotionContext()Landroid/hardware/scontext/SContextCallMotion;
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextCallMotion;

    return-object v0
.end method

.method public blacklist getCallPoseContext()Landroid/hardware/scontext/SContextCallPose;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextCallPose;

    return-object v0
.end method

.method blacklist getCaptureMotionContext()Landroid/hardware/scontext/SContextCaptureMotion;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextCaptureMotion;

    return-object v0
.end method

.method public blacklist getCurrentStatusForPositioningContext()Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    return-object v0
.end method

.method public blacklist getDevicePhysicalContextMonitorContext()Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;
    .registers 2

    .line 651
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;

    return-object v0
.end method

.method public blacklist getDevicePositionContext()Landroid/hardware/scontext/SContextDevicePosition;
    .registers 2

    .line 351
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextDevicePosition;

    return-object v0
.end method

.method public blacklist getDualDisplayAngleContext()Landroid/hardware/scontext/SContextDualDisplayAngle;
    .registers 2

    .line 583
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextDualDisplayAngle;

    return-object v0
.end method

.method public blacklist getEnvironmentAdaptiveDisplayContext()Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;
    .registers 2

    .line 572
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    return-object v0
.end method

.method public blacklist getEnvironmentContext()Landroid/hardware/scontext/SContextEnvironment;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextEnvironment;

    return-object v0
.end method

.method public blacklist getExerciseContext()Landroid/hardware/scontext/SContextExercise;
    .registers 2

    .line 528
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextExercise;

    return-object v0
.end method

.method public blacklist getFlatMotioForTableModeContext()Landroid/hardware/scontext/SContextFlatMotionForTableMode;
    .registers 2

    .line 506
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;

    return-object v0
.end method

.method public blacklist getFlatMotionContext()Landroid/hardware/scontext/SContextFlatMotion;
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextFlatMotion;

    return-object v0
.end method

.method public blacklist getFlipCoverActionContext()Landroid/hardware/scontext/SContextFlipCoverAction;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    return-object v0
.end method

.method public blacklist getFlipMotionContext()Landroid/hardware/scontext/SContextFlipMotion;
    .registers 2

    .line 630
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextFlipMotion;

    return-object v0
.end method

.method public blacklist getGyroTemperatureContext()Landroid/hardware/scontext/SContextGyroTemperature;
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextGyroTemperature;

    return-object v0
.end method

.method public blacklist getHallSensorContext()Landroid/hardware/scontext/SContextHallSensor;
    .registers 2

    .line 561
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextHallSensor;

    return-object v0
.end method

.method public blacklist getInactiveTimerContext()Landroid/hardware/scontext/SContextInactiveTimer;
    .registers 2

    .line 495
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextInactiveTimer;

    return-object v0
.end method

.method public blacklist getMainScreenDetectionContext()Landroid/hardware/scontext/SContextMainScreenDetection;
    .registers 2

    .line 618
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mDuplicatedEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextMainScreenDetection;

    return-object v0
.end method

.method public blacklist getMotionContext()Landroid/hardware/scontext/SContextMotion;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextMotion;

    return-object v0
.end method

.method public blacklist getMovementAlertContext()Landroid/hardware/scontext/SContextMovementAlert;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextMovementAlert;

    return-object v0
.end method

.method public blacklist getMovementContext()Landroid/hardware/scontext/SContextMovement;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextMovement;

    return-object v0
.end method

.method public blacklist getMovementForPositioningContext()Landroid/hardware/scontext/SContextMovementForPositioning;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    return-object v0
.end method

.method public blacklist getPedometerContext()Landroid/hardware/scontext/SContextPedometer;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextPedometer;

    return-object v0
.end method

.method public blacklist getPhoneStatusMonitorContext()Landroid/hardware/scontext/SContextPhoneStatusMonitor;
    .registers 2

    .line 550
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;

    return-object v0
.end method

.method public blacklist getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextPutDownMotion;

    return-object v0
.end method

.method public blacklist getSLocationCoreContext()Landroid/hardware/scontext/SContextSLocationCore;
    .registers 2

    .line 605
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextSLocationCore;

    return-object v0
.end method

.method public blacklist getSensorStatusCheckContext()Landroid/hardware/scontext/SContextSensorStatusCheck;
    .registers 2

    .line 662
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextSensorStatusCheck;

    return-object v0
.end method

.method public blacklist getShakeMotionContext()Landroid/hardware/scontext/SContextShakeMotion;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextShakeMotion;

    return-object v0
.end method

.method public blacklist getSleepMonitorContext()Landroid/hardware/scontext/SContextSleepMonitor;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextSleepMonitor;

    return-object v0
.end method

.method public blacklist getSpecificPoseAlertContext()Landroid/hardware/scontext/SContextSpecificPoseAlert;
    .registers 2

    .line 416
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextSpecificPoseAlert;

    return-object v0
.end method

.method blacklist getStepCountAlertContext()Landroid/hardware/scontext/SContextStepCountAlert;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextStepCountAlert;

    return-object v0
.end method

.method public blacklist getStepLevelMonitorContext()Landroid/hardware/scontext/SContextStepLevelMonitor;
    .registers 2

    .line 474
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextStepLevelMonitor;

    return-object v0
.end method

.method blacklist getTemperatureAlertContext()Landroid/hardware/scontext/SContextTemperatureAlert;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextTemperatureAlert;

    return-object v0
.end method

.method public blacklist getTestFlatMotionContext()Landroid/hardware/scontext/SContextTestFlatMotion;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextTestFlatMotion;

    return-object v0
.end method

.method public blacklist getWakeUpVoiceContext()Landroid/hardware/scontext/SContextWakeUpVoice;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    return-object v0
.end method

.method public blacklist getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;
    .registers 2

    .line 594
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextWirelessChargingDetection;

    return-object v0
.end method

.method public blacklist getWristUpMotionContext()Landroid/hardware/scontext/SContextWristUpMotion;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    check-cast v0, Landroid/hardware/scontext/SContextWristUpMotion;

    return-object v0
.end method

.method public blacklist setSContextEvent(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .line 674
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0, p1}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 675
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 676
    packed-switch p1, :pswitch_data_25e

    :pswitch_e
    goto/16 :goto_25c

    .line 921
    :pswitch_10
    new-instance v0, Landroid/hardware/scontext/SContextSensorStatusCheck;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSensorStatusCheck;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 922
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 923
    goto/16 :goto_25c

    .line 916
    :pswitch_1c
    new-instance v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 917
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 918
    goto/16 :goto_25c

    .line 911
    :pswitch_28
    new-instance v0, Landroid/hardware/scontext/SContextAnyMotionDetector;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAnyMotionDetector;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 912
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 913
    goto/16 :goto_25c

    .line 904
    :pswitch_34
    new-instance v0, Landroid/hardware/scontext/SContextFlipMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlipMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 905
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 906
    new-instance v0, Landroid/hardware/scontext/SContextMainScreenDetection;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMainScreenDetection;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mDuplicatedEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 907
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 908
    goto/16 :goto_25c

    .line 899
    :pswitch_4a
    new-instance v0, Landroid/hardware/scontext/SContextSLocationCore;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSLocationCore;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 900
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 901
    goto/16 :goto_25c

    .line 894
    :pswitch_56
    new-instance v0, Landroid/hardware/scontext/SContextWirelessChargingDetection;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextWirelessChargingDetection;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 895
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 896
    goto/16 :goto_25c

    .line 889
    :pswitch_62
    new-instance v0, Landroid/hardware/scontext/SContextDualDisplayAngle;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDualDisplayAngle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 890
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 891
    goto/16 :goto_25c

    .line 884
    :pswitch_6e
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 885
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 886
    goto/16 :goto_25c

    .line 879
    :pswitch_7a
    new-instance v0, Landroid/hardware/scontext/SContextHallSensor;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextHallSensor;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 880
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 881
    goto/16 :goto_25c

    .line 874
    :pswitch_86
    new-instance v0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPhoneStatusMonitor;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 875
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 876
    goto/16 :goto_25c

    .line 869
    :pswitch_92
    new-instance v0, Landroid/hardware/scontext/SContextAbnormalPressure;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAbnormalPressure;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 870
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 871
    goto/16 :goto_25c

    .line 864
    :pswitch_9e
    new-instance v0, Landroid/hardware/scontext/SContextExercise;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextExercise;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 865
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 866
    goto/16 :goto_25c

    .line 859
    :pswitch_aa
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightness;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoBrightness;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 860
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 861
    goto/16 :goto_25c

    .line 854
    :pswitch_b6
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableMode;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotionForTableMode;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 855
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 856
    goto/16 :goto_25c

    .line 849
    :pswitch_c2
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimer;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextInactiveTimer;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 850
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 851
    goto/16 :goto_25c

    .line 844
    :pswitch_ce
    new-instance v0, Landroid/hardware/scontext/SContextActiveTimeMonitor;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActiveTimeMonitor;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 845
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 846
    goto/16 :goto_25c

    .line 839
    :pswitch_da
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitor;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitor;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 840
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 841
    goto/16 :goto_25c

    .line 834
    :pswitch_e6
    new-instance v0, Landroid/hardware/scontext/SContextCallMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCallMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 835
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 836
    goto/16 :goto_25c

    .line 829
    :pswitch_f2
    new-instance v0, Landroid/hardware/scontext/SContextCaptureMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCaptureMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 830
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 831
    goto/16 :goto_25c

    .line 824
    :pswitch_fe
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationEx;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationEx;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 825
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 826
    goto/16 :goto_25c

    .line 819
    :pswitch_10a
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitor;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitor;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 820
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 821
    goto/16 :goto_25c

    .line 814
    :pswitch_116
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSpecificPoseAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 815
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 816
    goto/16 :goto_25c

    .line 809
    :pswitch_122
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotification;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotification;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 810
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 811
    goto/16 :goto_25c

    .line 804
    :pswitch_12e
    new-instance v0, Landroid/hardware/scontext/SContextActivityBatch;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityBatch;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 805
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 806
    goto/16 :goto_25c

    .line 799
    :pswitch_13a
    new-instance v0, Landroid/hardware/scontext/SContextActivityTracker;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityTracker;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 800
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 801
    goto/16 :goto_25c

    .line 794
    :pswitch_146
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLogging;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLogging;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 795
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 796
    goto/16 :goto_25c

    .line 789
    :pswitch_152
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextTemperatureAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 790
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 791
    goto/16 :goto_25c

    .line 784
    :pswitch_15e
    new-instance v0, Landroid/hardware/scontext/SContextDevicePosition;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDevicePosition;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 785
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 786
    goto/16 :goto_25c

    .line 779
    :pswitch_16a
    new-instance v0, Landroid/hardware/scontext/SContextMovementAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 780
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 781
    goto/16 :goto_25c

    .line 774
    :pswitch_176
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 775
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 776
    goto/16 :goto_25c

    .line 769
    :pswitch_182
    new-instance v0, Landroid/hardware/scontext/SContextWristUpMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextWristUpMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 770
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 771
    goto/16 :goto_25c

    .line 764
    :pswitch_18e
    new-instance v0, Landroid/hardware/scontext/SContextBounceLongMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextBounceLongMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 765
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 766
    goto/16 :goto_25c

    .line 759
    :pswitch_19a
    new-instance v0, Landroid/hardware/scontext/SContextBounceShortMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextBounceShortMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 760
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 761
    goto/16 :goto_25c

    .line 754
    :pswitch_1a6
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextWakeUpVoice;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 755
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 756
    goto/16 :goto_25c

    .line 749
    :pswitch_1b2
    new-instance v0, Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPutDownMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 750
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 751
    goto/16 :goto_25c

    .line 744
    :pswitch_1be
    new-instance v0, Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextGyroTemperature;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 745
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 746
    goto/16 :goto_25c

    .line 739
    :pswitch_1ca
    new-instance v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlipCoverAction;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 740
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 741
    goto/16 :goto_25c

    .line 734
    :pswitch_1d6
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextShakeMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 735
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 736
    goto/16 :goto_25c

    .line 729
    :pswitch_1e2
    new-instance v0, Landroid/hardware/scontext/SContextCallPose;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCallPose;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 730
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 731
    goto/16 :goto_25c

    .line 724
    :pswitch_1ee
    new-instance v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 725
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 726
    goto :goto_25c

    .line 719
    :pswitch_1f9
    new-instance v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementForPositioning;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 720
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 721
    goto :goto_25c

    .line 714
    :pswitch_204
    new-instance v0, Landroid/hardware/scontext/SContextEnvironment;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironment;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 715
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 716
    goto :goto_25c

    .line 709
    :pswitch_20f
    new-instance v0, Landroid/hardware/scontext/SContextAirMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAirMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 710
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 711
    goto :goto_25c

    .line 704
    :pswitch_21a
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoRotation;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 705
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 706
    goto :goto_25c

    .line 699
    :pswitch_225
    new-instance v0, Landroid/hardware/scontext/SContextMovement;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovement;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 700
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 701
    goto :goto_25c

    .line 694
    :pswitch_230
    new-instance v0, Landroid/hardware/scontext/SContextMotion;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 695
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 696
    goto :goto_25c

    .line 689
    :pswitch_23b
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlert;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 690
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 691
    goto :goto_25c

    .line 684
    :pswitch_246
    new-instance v0, Landroid/hardware/scontext/SContextPedometer;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometer;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 685
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 686
    goto :goto_25c

    .line 679
    :pswitch_251
    new-instance v0, Landroid/hardware/scontext/SContextApproach;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextApproach;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    .line 680
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 681
    nop

    .line 928
    :goto_25c
    return-void

    nop

    :pswitch_data_25e
    .packed-switch 0x1
        :pswitch_251
        :pswitch_246
        :pswitch_23b
        :pswitch_230
        :pswitch_225
        :pswitch_21a
        :pswitch_20f
        :pswitch_204
        :pswitch_1f9
        :pswitch_1ee
        :pswitch_1e2
        :pswitch_1d6
        :pswitch_1ca
        :pswitch_1be
        :pswitch_1b2
        :pswitch_1a6
        :pswitch_19a
        :pswitch_18e
        :pswitch_182
        :pswitch_176
        :pswitch_16a
        :pswitch_15e
        :pswitch_152
        :pswitch_146
        :pswitch_13a
        :pswitch_12e
        :pswitch_122
        :pswitch_116
        :pswitch_10a
        :pswitch_fe
        :pswitch_f2
        :pswitch_e6
        :pswitch_da
        :pswitch_ce
        :pswitch_c2
        :pswitch_b6
        :pswitch_e
        :pswitch_e
        :pswitch_aa
        :pswitch_9e
        :pswitch_92
        :pswitch_86
        :pswitch_7a
        :pswitch_6e
        :pswitch_62
        :pswitch_56
        :pswitch_4a
        :pswitch_e
        :pswitch_34
        :pswitch_28
        :pswitch_1c
        :pswitch_10
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 955
    iget-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 956
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 957
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 958
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_1e

    .line 959
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mDuplicatedEventContext:Landroid/hardware/scontext/SContextEventContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 961
    :cond_1e
    return-void
.end method
