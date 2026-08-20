.class public Lcom/samsung/android/hardware/context/SemContextEvent;
.super Ljava/lang/Object;
.source "SemContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist context:Landroid/os/Bundle;

.field private blacklist mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

.field public whitelist semContext:Lcom/samsung/android/hardware/context/SemContext;

.field public whitelist timestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/samsung/android/hardware/context/SemContext;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContext;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 901
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    .line 902
    const-class v0, Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContext;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 904
    const-class v0, Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextEventContext;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 905
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    .line 906
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 870
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAbnormalPressureContext()Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;
    .registers 2

    .line 473
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;

    return-object v0
.end method

.method public whitelist getActiveTimeMonitorContext()Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;

    return-object v0
.end method

.method public whitelist getActivityBatchContext()Lcom/samsung/android/hardware/context/SemContextActivityBatch;
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    return-object v0
.end method

.method public blacklist getActivityLocationLoggingContext()Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;

    return-object v0
.end method

.method public whitelist getActivityNotificationContext()Lcom/samsung/android/hardware/context/SemContextActivityNotification;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;

    return-object v0
.end method

.method public blacklist getActivityNotificationExContext()Lcom/samsung/android/hardware/context/SemContextActivityNotificationEx;
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationEx;

    return-object v0
.end method

.method public blacklist getActivityNotificationForLocationContext()Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;

    return-object v0
.end method

.method public whitelist getActivityTrackerContext()Lcom/samsung/android/hardware/context/SemContextActivityTracker;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;

    return-object v0
.end method

.method public blacklist getAirMotionContext()Lcom/samsung/android/hardware/context/SemContextAirMotion;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAirMotion;

    return-object v0
.end method

.method public blacklist getAnyMotionDetectorContext()Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;
    .registers 2

    .line 552
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;

    return-object v0
.end method

.method public blacklist getApproachContext()Lcom/samsung/android/hardware/context/SemContextApproach;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextApproach;

    return-object v0
.end method

.method public blacklist getAutoBrightnessContext()Lcom/samsung/android/hardware/context/SemContextAutoBrightness;
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;

    return-object v0
.end method

.method public whitelist getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    return-object v0
.end method

.method public blacklist getBounceLongMotionContext()Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;

    return-object v0
.end method

.method public blacklist getBounceShortMotionContext()Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;

    return-object v0
.end method

.method blacklist getCallMotionContext()Lcom/samsung/android/hardware/context/SemContextCallMotion;
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCallMotion;

    return-object v0
.end method

.method public blacklist getCallPoseContext()Lcom/samsung/android/hardware/context/SemContextCallPose;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCallPose;

    return-object v0
.end method

.method public whitelist getCarryingDetectionContext()Lcom/samsung/android/hardware/context/SemContextCarryingDetection;
    .registers 2

    .line 563
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;

    return-object v0
.end method

.method public blacklist getDeviceActivityDetectorContext()Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;
    .registers 2

    .line 596
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;

    return-object v0
.end method

.method public whitelist getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    return-object v0
.end method

.method public blacklist getEnvironmentAdaptiveDisplayContext()Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;

    return-object v0
.end method

.method public whitelist getFlatMotionContext()Lcom/samsung/android/hardware/context/SemContextFlatMotion;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    return-object v0
.end method

.method public blacklist getFlatMotionForTableModeContext()Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;

    return-object v0
.end method

.method public blacklist getFlipCoverActionContext()Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;

    return-object v0
.end method

.method public blacklist getFlipMotionContext()Lcom/samsung/android/hardware/context/SemContextFlipMotion;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;

    return-object v0
.end method

.method public blacklist getFreeFallDetectionContext()Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;

    return-object v0
.end method

.method public blacklist getGyroTemperatureContext()Lcom/samsung/android/hardware/context/SemContextGyroTemperature;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;

    return-object v0
.end method

.method public blacklist getHallSensorContext()Lcom/samsung/android/hardware/context/SemContextHallSensor;
    .registers 2

    .line 495
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextHallSensor;

    return-object v0
.end method

.method public blacklist getLocationChangeTriggerContext()Lcom/samsung/android/hardware/context/SemContextLocationChangeTrigger;
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTrigger;

    return-object v0
.end method

.method public blacklist getLocationCoreContext()Lcom/samsung/android/hardware/context/SemContextLocationCore;
    .registers 2

    .line 528
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextLocationCore;

    return-object v0
.end method

.method public blacklist getMovementAlertContext()Lcom/samsung/android/hardware/context/SemContextMovementAlert;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;

    return-object v0
.end method

.method public whitelist getMovementContext()Lcom/samsung/android/hardware/context/SemContextMovement;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextMovement;

    return-object v0
.end method

.method public whitelist getPedometerContext()Lcom/samsung/android/hardware/context/SemContextPedometer;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextPedometer;

    return-object v0
.end method

.method public whitelist getPhoneStatusMonitorContext()Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;

    return-object v0
.end method

.method public whitelist getPutDownMotionContext()Lcom/samsung/android/hardware/context/SemContextPutDownMotion;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;

    return-object v0
.end method

.method public whitelist getSedentaryTimerContext()Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;
    .registers 2

    .line 440
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;

    return-object v0
.end method

.method public whitelist getSensorStatusCheckContext()Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;
    .registers 2

    .line 574
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;

    return-object v0
.end method

.method public blacklist getShakeMotionContext()Lcom/samsung/android/hardware/context/SemContextShakeMotion;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;

    return-object v0
.end method

.method public blacklist getSlocationArDistanceContext()Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;
    .registers 2

    .line 618
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;

    return-object v0
.end method

.method public blacklist getSpecificPoseAlertContext()Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;

    return-object v0
.end method

.method blacklist getStepCountAlertContext()Lcom/samsung/android/hardware/context/SemContextStepCountAlert;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;

    return-object v0
.end method

.method public whitelist getStepLevelMonitorContext()Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    return-object v0
.end method

.method public blacklist getWakeUpVoiceContext()Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;

    return-object v0
.end method

.method public blacklist getWirelessChargingDetectionContext()Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;
    .registers 2

    .line 517
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;

    return-object v0
.end method

.method public blacklist getWristUpMotionContext()Lcom/samsung/android/hardware/context/SemContextWristUpMotion;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;

    return-object v0
.end method

.method public blacklist setContextEvent(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .line 630
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/context/SemContext;->setType(I)V

    .line 632
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    .line 633
    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    .line 634
    packed-switch p1, :pswitch_data_20e

    :pswitch_10
    goto/16 :goto_20c

    .line 852
    :pswitch_12
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistance;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 853
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 854
    goto/16 :goto_20c

    .line 847
    :pswitch_1e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 848
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 849
    goto/16 :goto_20c

    .line 842
    :pswitch_2a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 843
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 844
    goto/16 :goto_20c

    .line 831
    :pswitch_36
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSensorStatusCheck;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 832
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 833
    goto/16 :goto_20c

    .line 826
    :pswitch_42
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 827
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 828
    goto/16 :goto_20c

    .line 821
    :pswitch_4e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAnyMotionDetector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 822
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 823
    goto/16 :goto_20c

    .line 816
    :pswitch_5a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlipMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlipMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 817
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 818
    goto/16 :goto_20c

    .line 811
    :pswitch_66
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationCore;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCore;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 812
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 813
    goto/16 :goto_20c

    .line 806
    :pswitch_72
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWirelessChargingDetection;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 807
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 808
    goto/16 :goto_20c

    .line 801
    :pswitch_7e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 802
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 803
    goto/16 :goto_20c

    .line 796
    :pswitch_8a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextHallSensor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextHallSensor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 797
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 798
    goto/16 :goto_20c

    .line 791
    :pswitch_96
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 792
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 793
    goto/16 :goto_20c

    .line 786
    :pswitch_a2
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 787
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 788
    goto/16 :goto_20c

    .line 781
    :pswitch_ae
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightness;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 782
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 783
    goto/16 :goto_20c

    .line 776
    :pswitch_ba
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotionForTableMode;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 777
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 778
    goto/16 :goto_20c

    .line 771
    :pswitch_c6
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSedentaryTimer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 772
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 773
    goto/16 :goto_20c

    .line 766
    :pswitch_d2
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActiveTimeMonitor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 767
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 768
    goto/16 :goto_20c

    .line 761
    :pswitch_de
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepLevelMonitor;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 762
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 763
    goto/16 :goto_20c

    .line 756
    :pswitch_ea
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCallMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCallMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 757
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 758
    goto/16 :goto_20c

    .line 752
    :pswitch_f6
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 753
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 754
    goto/16 :goto_20c

    .line 747
    :pswitch_102
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 748
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 749
    goto/16 :goto_20c

    .line 742
    :pswitch_10e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotification;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 743
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 744
    goto/16 :goto_20c

    .line 737
    :pswitch_11a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityBatch;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityBatch;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 738
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 739
    goto/16 :goto_20c

    .line 732
    :pswitch_126
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityTracker;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityTracker;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 733
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 734
    goto/16 :goto_20c

    .line 727
    :pswitch_132
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityLocationLogging;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 728
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 729
    goto/16 :goto_20c

    .line 722
    :pswitch_13e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 723
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 724
    goto/16 :goto_20c

    .line 717
    :pswitch_14a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMovementAlert;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMovementAlert;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 718
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 719
    goto/16 :goto_20c

    .line 712
    :pswitch_156
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 713
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 714
    goto/16 :goto_20c

    .line 707
    :pswitch_162
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 708
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 709
    goto/16 :goto_20c

    .line 702
    :pswitch_16e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextBounceLongMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 703
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 704
    goto/16 :goto_20c

    .line 697
    :pswitch_17a
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextBounceShortMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 698
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 699
    goto/16 :goto_20c

    .line 692
    :pswitch_186
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoice;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 693
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 694
    goto/16 :goto_20c

    .line 687
    :pswitch_192
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 688
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 689
    goto/16 :goto_20c

    .line 682
    :pswitch_19e
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 683
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 684
    goto :goto_20c

    .line 677
    :pswitch_1a9
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 678
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 679
    goto :goto_20c

    .line 672
    :pswitch_1b4
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 673
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 674
    goto :goto_20c

    .line 667
    :pswitch_1bf
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCallPose;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCallPose;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 668
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 669
    goto :goto_20c

    .line 662
    :pswitch_1ca
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAirMotion;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAirMotion;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 663
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 664
    goto :goto_20c

    .line 657
    :pswitch_1d5
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 658
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 659
    goto :goto_20c

    .line 652
    :pswitch_1e0
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMovement;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMovement;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 653
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 654
    goto :goto_20c

    .line 647
    :pswitch_1eb
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 648
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 649
    goto :goto_20c

    .line 642
    :pswitch_1f6
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometer;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 643
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 644
    goto :goto_20c

    .line 637
    :pswitch_201
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproach;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproach;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    .line 638
    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/SemContextEventContext;->setValues(Landroid/os/Bundle;)V

    .line 639
    nop

    .line 859
    :goto_20c
    return-void

    nop

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_201
        :pswitch_1f6
        :pswitch_1eb
        :pswitch_10
        :pswitch_1e0
        :pswitch_1d5
        :pswitch_1ca
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_1bf
        :pswitch_1b4
        :pswitch_1a9
        :pswitch_19e
        :pswitch_192
        :pswitch_186
        :pswitch_17a
        :pswitch_16e
        :pswitch_162
        :pswitch_156
        :pswitch_14a
        :pswitch_13e
        :pswitch_10
        :pswitch_132
        :pswitch_126
        :pswitch_11a
        :pswitch_10e
        :pswitch_102
        :pswitch_10
        :pswitch_f6
        :pswitch_10
        :pswitch_ea
        :pswitch_de
        :pswitch_d2
        :pswitch_c6
        :pswitch_ba
        :pswitch_10
        :pswitch_10
        :pswitch_ae
        :pswitch_10
        :pswitch_a2
        :pswitch_96
        :pswitch_8a
        :pswitch_7e
        :pswitch_10
        :pswitch_72
        :pswitch_66
        :pswitch_10
        :pswitch_5a
        :pswitch_4e
        :pswitch_42
        :pswitch_36
        :pswitch_10
        :pswitch_2a
        :pswitch_1e
        :pswitch_12
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 886
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 887
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 889
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->mEventContext:Lcom/samsung/android/hardware/context/SemContextEventContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 890
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEvent;->context:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 891
    return-void
.end method
