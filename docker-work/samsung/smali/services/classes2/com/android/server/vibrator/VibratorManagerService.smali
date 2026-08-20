.class public Lcom/android/server/vibrator/VibratorManagerService;
.super Landroid/os/IVibratorManagerService$Stub;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;,
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;,
        Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;,
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;,
        Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;,
        Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;,
        Lcom/android/server/vibrator/VibratorManagerService$Injector;,
        Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ATTRIBUTES_ALL_BYPASS_FLAGS:I = 0x3

.field public static final BATTERY_STATS_REPEATING_VIBRATION_DURATION:J = 0x1388L

.field public static final DEBUG:Z = true

.field public static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

.field public static final TAG:Ljava/lang/String; = "VibratorManagerService"

.field public static final VIBRATION_CANCEL_WAIT_MILLIS:J = 0x1388L


# instance fields
.field public final mAlwaysOnEffects:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field public final mCapabilities:J

.field public mCheckExecutablePkg:Ljava/lang/String;

.field public mComposed:Landroid/os/VibrationEffect$Composed;

.field public final mContext:Landroid/content/Context;

.field public mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

.field public mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

.field public final mHandler:Landroid/os/Handler;

.field public mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

.field public mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

.field public final mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsExternalVibrationRepeated:Z

.field public mIsFrequencySupported:Z

.field public mIsHapticEngineSupported:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

.field public mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mNotificationManager:Landroid/app/INotificationManager;

.field public mSamsungReceiver:Landroid/content/BroadcastReceiver;

.field public mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

.field public mServiceReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field public final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

.field public final mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

.field public mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

.field public final mVibratorIds:[I

.field public final mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

.field public final mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation
.end field

.field public mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$S3DgQpHYVAub4cs1tmkdF33SGcE(ILcom/android/server/vibrator/VibratorController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->lambda$setAlwaysOnEffect$0(ILcom/android/server/vibrator/VibratorController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dydjXhaDtAEVdkZrJW1gKsWY_DE(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->lambda$fixupAlwaysOnEffectsLocked$2(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStatsService(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/internal/app/IBatteryStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCapabilities(Lcom/android/server/vibrator/VibratorManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGoodCatchManager(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/samsung/android/server/audio/GoodCatchManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHqmHelper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsExternalVibrationRepeated(Lcom/android/server/vibrator/VibratorManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIsExternalVibrationRepeated:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrationScaler(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrationSettings(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSettings;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualVibSoundHelper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VirtualVibSoundHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmGoodCatchManager(Lcom/android/server/vibrator/VibratorManagerService;Lcom/samsung/android/server/audio/GoodCatchManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHqmHelper(Lcom/android/server/vibrator/VibratorManagerService;Lcom/samsung/android/server/vibrator/VibratorHqmHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsExternalVibrationRepeated(Lcom/android/server/vibrator/VibratorManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIsExternalVibrationRepeated:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNextVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbootCompleteReady(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->bootCompleteReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearNextVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mendVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mendVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfixupVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monSyncedVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->onSyncedVibrationComplete(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;IJ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->onVibrationComplete(IJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportFinishedVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->reportFinishedVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportVibrationInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->reportVibrationInfo(Landroid/os/ExternalVibration;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendDataToHqm(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->sendDataToHqm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstartVibrationOnThreadLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mvibrateInternal(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/Vibration;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 114
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 238
    invoke-direct {p0}, Landroid/os/IVibratorManagerService$Stub;-><init>()V

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks-IA;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 170
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 186
    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2376
    new-instance v3, Lcom/samsung/android/server/vibrator/VibratorHqmData;

    invoke-direct {v3}, Lcom/samsung/android/server/vibrator/VibratorHqmData;-><init>()V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    .line 2383
    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver-IA;)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mSamsungReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    .line 2385
    iput-boolean v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIsFrequencySupported:Z

    .line 2386
    iput-boolean v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIsHapticEngineSupported:Z

    const-string v3, ""

    .line 2388
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCheckExecutablePkg:Ljava/lang/String;

    .line 2390
    iput-boolean v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIsExternalVibrationRepeated:Z

    .line 239
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 240
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 243
    new-instance v4, Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {v4, p1, v3, p0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 244
    invoke-static {}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getInstance()Lcom/samsung/android/server/vibrator/VibratorHelper;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->registerCustomIntent(Landroid/content/Context;)V

    .line 250
    new-instance v5, Lcom/android/server/vibrator/VibrationScaler;

    invoke-direct {v5, p1, v4}, Lcom/android/server/vibrator/VibrationScaler;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 251
    new-instance v5, Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-direct {v5, p1, v3}, Lcom/android/server/vibrator/InputDeviceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    .line 252
    new-instance v3, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    invoke-direct {v3, v4}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    .line 254
    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    .line 255
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getNativeWrapper()Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    .line 256
    invoke-virtual {v4, v3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->init(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)V

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 260
    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-direct {v6, v5}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    .line 262
    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 264
    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 266
    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const-string v6, "*vibrator*"

    .line 267
    invoke-virtual {v5, v1, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 268
    invoke-virtual {v5, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 269
    new-instance v1, Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v1, v5, v0}, Lcom/android/server/vibrator/VibrationThread;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    .line 270
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 275
    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getCapabilities()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    .line 276
    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getVibratorIds()[I

    move-result-object v0

    if-nez v0, :cond_d7

    new-array v0, v2, [I

    .line 278
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 279
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    goto :goto_f3

    .line 282
    :cond_d7
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    .line 283
    new-instance v1, Landroid/util/SparseArray;

    array-length v4, v0

    invoke-direct {v1, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    .line 284
    array-length v1, v0

    move v4, v2

    :goto_e3
    if-ge v4, v1, :cond_f3

    aget v5, v0, v4

    .line 285
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p2, v5, v3}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createVibratorController(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)Lcom/android/server/vibrator/VibratorController;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e3

    .line 291
    :cond_f3
    :goto_f3
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    .line 292
    :goto_f8
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_10e

    .line 293
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f8

    .line 296
    :cond_10e
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 300
    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    const-string p0, "external_vibrator_service"

    invoke-virtual {p2, p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public static extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;
    .registers 3

    .line 1322
    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_23

    .line 1323
    check-cast p0, Landroid/os/VibrationEffect$Composed;

    .line 1324
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 1325
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 1326
    instance-of v0, p0, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v0, :cond_23

    .line 1327
    check-cast p0, Landroid/os/vibrator/PrebakedSegment;

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isEffectValid(Landroid/os/CombinedVibration;)Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "VibratorManagerService"

    if-nez p0, :cond_b

    const-string p0, "effect must not be null"

    .line 1169
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1173
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->validate()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    const/4 p0, 0x1

    return p0

    :catch_10
    move-exception p0

    const-string v2, "Encountered issue when verifying CombinedVibrationEffect."

    .line 1175
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static synthetic lambda$fixupAlwaysOnEffectsLocked$2(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;
    .registers 2

    return-object p0
.end method

.method public static synthetic lambda$setAlwaysOnEffect$0(ILcom/android/server/vibrator/VibratorController;)V
    .registers 4

    const-wide/16 v0, 0x40

    .line 404
    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p1, p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$startVibrationLocked$1(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 3

    .line 837
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static native nativeCancelSynced(J)V
.end method

.method public static native nativeGetCapabilities(J)J
.end method

.method public static native nativeGetFinalizer()J
.end method

.method public static native nativeGetVibratorIds(J)[I
.end method

.method public static native nativeInit(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)J
.end method

.method public static native nativePrepareSynced(J[I)Z
.end method

.method public static native nativeTriggerSynced(JJ)Z
.end method


# virtual methods
.method public addCustomDump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2558
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Extra vibrator information"

    .line 2559
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_SET_MAX_M = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ALWAYS_VIBRATE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getMotorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedMotorType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getMotorType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getVibratorGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedVibratorGroup()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getVibrationTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    prebakedHapticPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->isSupportPrebakedHapticPattern()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    hapticEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->isSupportHapticEngine()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    enhancedSamsungHapticPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->isSupportEnhancedSamsungHapticPattern()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    intensityControl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->isSupportIntensityControl()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  SUPPORT_ACH = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final bootCompleteReady()V
    .registers 1

    .line 2410
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->bootCompleteReady()V

    return-void
.end method

.method public cancelCurrentVibration(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 4

    .line 2732
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-eqz v0, :cond_15

    .line 2733
    invoke-virtual {p0, v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 2734
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0}, Landroid/os/ExternalVibration;->mute()Z

    const/4 v0, 0x0

    .line 2735
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    const/4 v0, 0x0

    .line 2736
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V

    .line 2738
    :cond_15
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    .line 2739
    invoke-virtual {v0, p1, v1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 2741
    :cond_1d
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz p0, :cond_27

    const-string/jumbo p1, "recovery"

    .line 2742
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 10

    const-string v0, "cancelVibrate"

    const-wide/32 v1, 0x800000

    .line 614
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 616
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string v4, "cancelVibrate"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_8d

    :try_start_14
    const-string v3, "VibratorManagerService"

    const-string v4, "Canceling vibration"

    .line 622
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_8a

    .line 629
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v5, :cond_32

    .line 630
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 632
    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 634
    :cond_32
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v6, 0x0

    if-eqz v5, :cond_48

    .line 635
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z

    move-result p2

    if-eqz p2, :cond_48

    .line 637
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {p2, v5, v6}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 643
    :cond_48
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-eqz p2, :cond_7d

    iget-object p2, p2, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 645
    invoke-virtual {p2}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object p2

    .line 644
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 648
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    move-result p1

    if-eqz p1, :cond_71

    const-string p0, "VibratorManagerService"

    const-string p1, "Keeping repeating external vibration"

    .line 649
    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_1f .. :try_end_69} :catchall_85

    .line 666
    :try_start_69
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_8a

    .line 670
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 653
    :cond_71
    :try_start_71
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->mute()Z

    .line 654
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {p0, p1, v6}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;Z)V
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_85

    .line 666
    :cond_7d
    :try_start_7d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_8a

    .line 670
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_85
    move-exception p0

    .line 666
    :try_start_86
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    throw p0

    :catchall_8a
    move-exception p0

    .line 668
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception p0

    .line 670
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 671
    throw p0
.end method

.method public final checkAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1117
    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v1

    const/4 v2, 0x3

    .line 1116
    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result p2

    .line 1118
    invoke-virtual {p0, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result p0

    if-eq p2, p0, :cond_29

    if-nez p0, :cond_29

    .line 1123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bypassing DND for vibrate from uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VibratorManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return p0
.end method

.method public final clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1738
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v0, :cond_e

    .line 1739
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    const/4 p1, 0x0

    .line 1740
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    :cond_e
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 676
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 678
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 681
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v3, v2, :cond_22

    aget-object v5, p3, v3

    const-string v6, "--proto"

    .line 682
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v4, 0x1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_22
    if-eqz v4, :cond_28

    .line 688
    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_2b

    .line 690
    :cond_28
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->dumpText(Ljava/io/PrintWriter;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2f

    .line 693
    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    throw p0
.end method

.method public declared-synchronized dumpProto(Ljava/io/FileDescriptor;)V
    .registers 9

    monitor-enter p0

    .line 734
    :try_start_1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-string p1, "VibratorManagerService"

    const-string v1, "Dumping vibrator manager service to proto..."

    .line 736
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_8d

    .line 739
    :try_start_10
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 740
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_29

    .line 741
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v1

    const-wide v2, 0x10b00000002L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 744
    :cond_29
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-eqz v1, :cond_39

    .line 745
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v1

    const-wide v2, 0x10b00000004L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_39
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 751
    :goto_3c
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_6f

    const-wide v4, 0x20500000001L

    .line 752
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 753
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->isVibrating()Z

    move-result v4

    or-int/2addr v2, v4

    .line 754
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->isUnderExternalControl()Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_6f
    const-wide v4, 0x10800000003L

    .line 756
    invoke-virtual {v0, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000005L

    .line 757
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 759
    monitor-exit p1
    :try_end_80
    .catchall {:try_start_10 .. :try_end_80} :catchall_8a

    .line 760
    :try_start_80
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 761
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_8d

    .line 762
    monitor-exit p0

    return-void

    :catchall_8a
    move-exception v0

    .line 759
    :try_start_8b
    monitor-exit p1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final dumpText(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "VibratorManagerService"

    const-string v1, "Dumping vibrator manager service to text..."

    .line 699
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    const-string v1, "Vibrator Manager Service:"

    .line 702
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mVibrationSettings:"

    .line 703
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  mVibratorControllers:"

    .line 706
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 707
    :goto_33
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_58

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 710
    :cond_58
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  mCurrentVibration:"

    .line 711
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v3, 0x0

    if-nez v2, :cond_71

    move-object v2, v3

    goto :goto_79

    .line 713
    :cond_71
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    :goto_79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  mNextVibration:"

    .line 715
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez v2, :cond_9b

    move-object v2, v3

    goto :goto_a3

    .line 717
    :cond_9b
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    :goto_a3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  mCurrentExternalVibration:"

    .line 719
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-nez v2, :cond_c4

    goto :goto_c8

    .line 721
    :cond_c4
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v3

    :goto_c8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 723
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_a .. :try_end_d6} :catchall_e7

    .line 724
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dumpText(Ljava/io/PrintWriter;)V

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->addCustomDump(Ljava/io/PrintWriter;)V

    .line 728
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 729
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->addCustomDump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_e7
    move-exception p0

    .line 723
    :try_start_e8
    monitor-exit v0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw p0
.end method

.method public final endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$Status;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string v2, "endExternalVibrateLocked"

    .line 1754
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1756
    :try_start_8
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_27

    if-nez v2, :cond_10

    .line 1767
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1759
    :cond_10
    :try_start_10
    invoke-virtual {p0, v2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1760
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v2, p1}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    const/4 p1, 0x0

    .line 1762
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-nez p2, :cond_23

    const/4 p1, 0x0

    .line 1764
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_27

    .line 1767
    :cond_23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1768
    throw p0
.end method

.method public final endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 895
    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 896
    iget v0, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 897
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/Vibration;)V

    return-void
.end method

.method public final endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 902
    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->end(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 903
    iget-object v0, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getUid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 904
    invoke-virtual {v1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v1

    .line 903
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 905
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V

    return-void
.end method

.method public final enforceUpdateAppOpsStatsPermission(I)V
    .registers 5

    .line 1149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 1152
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_12

    return-void

    .line 1155
    :cond_12
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 1156
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1155
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V
    .registers 5

    .line 1186
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_e

    .line 1187
    check-cast p2, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V

    goto :goto_47

    .line 1188
    :cond_e
    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 1189
    check-cast p2, Landroid/os/CombinedVibration$Stereo;

    .line 1190
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p2

    .line 1191
    :goto_19
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 1192
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1194
    :cond_2b
    instance-of v0, p2, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_47

    .line 1195
    check-cast p2, Landroid/os/CombinedVibration$Sequential;

    .line 1196
    invoke-virtual {p2}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object p2

    .line 1197
    :goto_35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 1198
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_47
    :goto_47
    return-void
.end method

.method public final fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V
    .registers 8

    .line 1204
    check-cast p2, Landroid/os/VibrationEffect$Composed;

    .line 1205
    invoke-virtual {p2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_39

    .line 1207
    invoke-virtual {p2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 1208
    instance-of v3, v2, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v3, :cond_36

    .line 1209
    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    .line 1210
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 1211
    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v4

    .line 1210
    invoke-virtual {v3, v4}, Lcom/android/server/vibrator/VibrationSettings;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 1212
    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v4

    if-eqz v4, :cond_36

    if-eqz v3, :cond_36

    .line 1213
    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/vibrator/Vibration;->addFallback(ILandroid/os/VibrationEffect;)V

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_39
    return-void
.end method

.method public final finishAppOpModeLocked(ILjava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1141
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return-void
.end method

.method public final fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CombinedVibration;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/os/vibrator/PrebakedSegment;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string v2, "fixupAlwaysOnEffectsLocked"

    .line 1286
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1289
    :try_start_8
    instance-of v2, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    .line 1290
    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    .line 1291
    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/os/VibrationEffect;)V

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_27

    .line 1292
    :cond_1d
    instance-of v2, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v2, :cond_74

    .line 1293
    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    .line 1298
    :goto_27
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    .line 1299
    :goto_2d
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_66

    .line 1300
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/VibrationEffect;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v5

    if-nez v5, :cond_4a

    const-string p0, "VibratorManagerService"

    const-string p1, "Only prebaked effects supported for always-on."

    .line 1302
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_78

    .line 1316
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    .line 1305
    :cond_4a
    :try_start_4a
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1306
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/vibrator/VibratorController;

    if-eqz v7, :cond_63

    const-wide/16 v8, 0x40

    .line 1307
    invoke-virtual {v7, v8, v9}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 1308
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 1311
    :cond_66
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result p0
    :try_end_6a
    .catchall {:try_start_4a .. :try_end_6a} :catchall_78

    if-nez p0, :cond_70

    .line 1316
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_70
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :cond_74
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_78
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1317
    throw p0
.end method

.method public final fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p1, p0, :cond_b

    .line 1341
    invoke-virtual {p2, p0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return p1
.end method

.method public final fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .registers 6

    if-nez p1, :cond_4

    .line 1227
    sget-object p1, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 1229
    :cond_4
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    .line 1231
    invoke-virtual {p2}, Landroid/os/CombinedVibration;->isHapticFeedbackCandidate()Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0x12

    :cond_14
    if-eqz p2, :cond_6c

    .line 1237
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationUsages(I)I

    move-result v0

    .line 1238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "converted usage = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-static {v0}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "VibratorManagerService"

    .line 1238
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    if-eqz p2, :cond_6c

    const/4 v1, 0x0

    .line 1249
    invoke-virtual {p2}, Landroid/os/VibrationEffect$Composed;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object p2

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-ne p2, v2, :cond_51

    const-string v1, "INTENSITY_MAX"

    goto :goto_5d

    .line 1251
    :cond_51
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p2}, Landroid/os/VibrationEffect$Composed;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object p2

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-ne p2, v2, :cond_5d

    const-string v1, "INTENSITY_MIN"

    :cond_5d
    :goto_5d
    if-eqz v1, :cond_6c

    .line 1255
    new-instance p2, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p2, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 1256
    invoke-virtual {p2, v1}, Landroid/os/VibrationAttributes$Builder;->semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;

    move-result-object p1

    .line 1257
    invoke-virtual {p1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p1

    .line 1264
    :cond_6c
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p2

    and-int/lit8 v1, p2, 0x3

    if-eqz v1, :cond_8e

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 1266
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8e

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 1267
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8e

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 1268
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8e

    and-int/lit8 p2, p2, -0x4

    .line 1273
    :cond_8e
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    if-ne v0, p0, :cond_9b

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p0

    if-ne p2, p0, :cond_9b

    return-object p1

    .line 1276
    :cond_9b
    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 1277
    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 1278
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    .line 1279
    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final fixupVibrationUsages(I)I
    .registers 3

    .line 2663
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    if-nez p0, :cond_5

    return p1

    .line 2666
    :cond_5
    sget-object v0, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    goto :goto_2b

    :cond_1e
    if-nez p1, :cond_2b

    const/16 p1, 0x13

    goto :goto_2b

    :cond_23
    const/16 p1, 0x21

    goto :goto_2b

    :cond_26
    const/16 p1, 0x31

    goto :goto_2b

    :cond_29
    const/16 p1, 0x12

    :cond_2b
    :goto_2b
    return p1
.end method

.method public getActualPackageName(Lcom/android/server/vibrator/Vibration;)Ljava/lang/String;
    .registers 4

    .line 2579
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 2580
    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/vibrator/Vibration$DebugInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2582
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->isAllowedUsage(I)Z

    move-result p0

    if-eqz p0, :cond_39

    const-string/jumbo p0, "reason: Notification ("

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_39

    const/16 p0, 0x28

    .line 2583
    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    .line 2584
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 2585
    aget-object p0, p0, p1

    goto :goto_3b

    .line 2587
    :cond_39
    iget-object p0, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    :goto_3b
    return-object p0
.end method

.method public final getComposedEffect(Landroid/os/CombinedVibration;)Landroid/os/VibrationEffect$Composed;
    .registers 2

    .line 2688
    instance-of p0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz p0, :cond_d

    .line 2689
    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect$Composed;

    goto :goto_25

    .line 2690
    :cond_d
    instance-of p0, p1, Landroid/os/CombinedVibration$Stereo;

    if-nez p0, :cond_18

    instance-of p0, p1, Landroid/os/CombinedVibration$Sequential;

    if-eqz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    return-object p0

    .line 2691
    :cond_18
    :goto_18
    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect$Composed;

    :goto_25
    return-object p0
.end method

.method public getCurrentMagnitude(I)I
    .registers 2

    .line 2626
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentMagnitude(I)I

    move-result p0

    return p0
.end method

.method public getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;
    .registers 2

    .line 2419
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    return-object p0
.end method

.method public getMagnitude(Ljava/lang/String;)I
    .registers 3

    .line 2622
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    const-string v0, "VibratorManagerService"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/vibrator/VibrationSettings;->getMagnitude(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getMagnitudeByUsage(Landroid/os/VibrationAttributes;)I
    .registers 4

    const-string v0, "INTENSITY_MAX"

    .line 2699
    invoke-virtual {p1, v0}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2700
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getMaxMagnitude()I

    move-result p0

    return p0

    :cond_f
    const-string v0, "INTENSITY_MIN"

    .line 2701
    invoke-virtual {p1, v0}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2702
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->getMinMagnitude()I

    move-result p0

    return p0

    .line 2704
    :cond_1e
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 2705
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->getCurrentMagnitude(I)I

    move-result p0

    goto :goto_36

    .line 2706
    :cond_30
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result p0

    :goto_36
    return p0
.end method

.method public final getNotificationService()Landroid/app/INotificationManager;
    .registers 2

    .line 2631
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    if-eqz v0, :cond_5

    return-object v0

    .line 2635
    :cond_5
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public final getSemHapticVibration(Lcom/android/server/vibrator/SemVibrationBundle;)Lcom/android/server/vibrator/SemVibration;
    .registers 5

    .line 2641
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedMotorType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    .line 2642
    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->isEffectClickReservedDC()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x12

    .line 2643
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->getCurrentMagnitude(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/vibrator/SemVibrationBundle;->setMagnitude(I)V

    .line 2644
    new-instance p0, Lcom/android/server/vibrator/SemDcVibration;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/SemDcVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    return-object p0

    .line 2647
    :cond_22
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CUSTOM_PATTERN:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->isCustomIndexValid()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2648
    new-instance v0, Lcom/android/server/vibrator/SemCustomVibration;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/server/vibrator/SemCustomVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;Landroid/os/vibrator/SemHapticSegment;Lcom/android/server/vibrator/VibrationSettings;Landroid/content/Context;)V

    return-object v0

    .line 2651
    :cond_3a
    invoke-static {}, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_CIRRUS_HAPTIC()Z

    move-result p0

    if-eqz p0, :cond_46

    .line 2652
    new-instance p0, Lcom/android/server/vibrator/SemIndexVibration;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/SemIndexVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    return-object p0

    .line 2655
    :cond_46
    new-instance p0, Lcom/android/server/vibrator/SemPatternVibration;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/SemPatternVibration;-><init>(Lcom/android/server/vibrator/SemVibrationBundle;)V

    return-object p0
.end method

.method public getSupportedMotorType()I
    .registers 3

    .line 2523
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2524
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->getMotorType()I

    move-result p0

    return p0

    :cond_16
    return v1
.end method

.method public getSupportedVibratorGroup()I
    .registers 3

    .line 2516
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2517
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->getVibratorGroup()I

    move-result p0

    return p0

    :cond_16
    return v1
.end method

.method public getVibratorIds()[I
    .registers 2

    .line 336
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public getVibratorInfo(I)Landroid/os/VibratorInfo;
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return-object v0

    .line 346
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    .line 347
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_13
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    if-eqz p0, :cond_19

    .line 349
    monitor-exit v2

    return-object v1

    .line 351
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_22

    .line 354
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController;->isVibratorInfoLoadSuccessful()Z

    move-result p0

    if-eqz p0, :cond_21

    move-object v0, v1

    :cond_21
    return-object v0

    :catchall_22
    move-exception p0

    .line 351
    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 2

    .line 1348
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public ignoreCancellingCurrentRingVibration(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_38

    .line 2717
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p1

    .line 2718
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    .line 2719
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p1

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ne p1, v1, :cond_16

    move p1, v2

    goto :goto_17

    :cond_16
    move p1, p0

    :goto_17
    const-string v1, "com.android.server.telecom"

    .line 2721
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz p1, :cond_38

    .line 2722
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ignore cancelling current vibration: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibratorManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_38
    return p0
.end method

.method public isAllowedUsage(I)Z
    .registers 2

    const/16 p0, 0x31

    if-eq p1, p0, :cond_d

    if-eqz p1, :cond_d

    const/16 p0, 0x21

    if-ne p1, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public final isDocomoVibrate(Ljava/lang/String;)Z
    .registers 2

    .line 2710
    sget-boolean p0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_INCOMING_VIBRATION_DURING_REPEATING:Z

    if-eqz p0, :cond_e

    const-string p0, "com.nttdocomo.android.phonemotion"

    .line 2711
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isSupportEnhancedSamsungHapticPattern()Z
    .registers 3

    .line 2551
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2552
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->isSupportEnhancedSamsungHapticPattern()Z

    move-result p0

    return p0

    :cond_16
    return v1
.end method

.method public final isSupportHapticEngine()Z
    .registers 3

    .line 2530
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2531
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->isSupportHapticEngine()Z

    move-result p0

    return p0

    :cond_16
    return v1
.end method

.method public final isSupportIntensityControl()Z
    .registers 3

    .line 2537
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2538
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->isSupportIntensityControl()Z

    move-result p0

    return p0

    :cond_16
    return v1
.end method

.method public final isSupportPrebakedHapticPattern()Z
    .registers 3

    .line 2544
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2545
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->isSupportPrebakedHapticPattern()Z

    move-result p0

    return p0

    :cond_16
    return v1
.end method

.method public isVibrating(I)Z
    .registers 5

    .line 359
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string v2, "isVibrating"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    if-eqz p0, :cond_1b

    .line 363
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorController;->isVibrating()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public final logVibrationStatus(ILandroid/os/VibrationAttributes;Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 6

    .line 909
    sget-object p0, Lcom/android/server/vibrator/VibratorManagerService$2;->$SwitchMap$com$android$server$vibrator$Vibration$Status:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const-string v0, "VibratorManagerService"

    packed-switch p0, :pswitch_data_92

    .line 946
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vibration for uid="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and with attrs="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ended with status "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :pswitch_32
    const-string p0, "Ignoring incoming vibration in favor of ringtone vibration"

    .line 940
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 934
    :pswitch_38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring incoming vibration because of ringer mode, attrs="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :pswitch_4d
    const-string p0, "Ignoring incoming vibration in favor of repeating vibration"

    .line 929
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :pswitch_53
    const-string p0, "Ignoring incoming vibration for current external vibration"

    .line 924
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :pswitch_59
    const-string p0, "Ignoring incoming vibration in favor of alarm vibration"

    .line 919
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 915
    :pswitch_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Would be an error: vibrate from uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 911
    :pswitch_74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is background, attrs= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_74
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_38
        :pswitch_32
    .end packed-switch
.end method

.method public final onAllVibratorsLocked(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1364
    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1365
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final onCustomSystemReady()V
    .registers 3

    .line 2397
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->loadPatternInfo(Landroid/content/Context;)V

    .line 2399
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2401
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->supportsFrequencyControl()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIsFrequencySupported:Z

    .line 2402
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->supportsHapticEngine()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIsHapticEngineSupported:Z

    .line 2404
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIsFrequencySupported:Z

    invoke-static {v0}, Lcom/android/server/vibrator/SemVibration;->setIsFrequencySupported(Z)V

    .line 2405
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIsHapticEngineSupported:Z

    invoke-static {p0}, Lcom/android/server/vibrator/SemVibration;->setIsHapticEngineSupported(Z)V

    :cond_23
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 767
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {p5}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand-IA;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 768
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onSyncedVibrationComplete(J)V
    .registers 7

    .line 969
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 970
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_31

    const-string v1, "VibratorManagerService"

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Synced vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " complete, notifying thread"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->notifySyncedVibrationComplete()V

    .line 976
    :cond_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final onVibrationComplete(IJ)V
    .registers 8

    .line 980
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 981
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_39

    const-string v1, "VibratorManagerService"

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " on vibrator "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " complete, notifying thread"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyVibratorComplete(I)V

    .line 988
    :cond_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final registerCustomIntent(Landroid/content/Context;)V
    .registers 4

    .line 2423
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 2426
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 2429
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 2430
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.media.action.VIBRTOR_LOGGING"

    .line 2431
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.launcher3.quickstep.closeall"

    .line 2439
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2441
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mSamsungReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 6

    .line 368
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string/jumbo v2, "registerVibratorStateListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    if-nez p0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 375
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorController;->registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result p0

    return p0
.end method

.method public final reportFinishedVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "reportFinishVibrationLocked"

    .line 954
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v2, "vibration"

    const/4 v3, 0x0

    .line 955
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 957
    :try_start_10
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    const-string v3, "VibratorManagerService"

    .line 959
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reporting vibration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " finished with status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-virtual {p0, v2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 962
    iget p1, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v2, v2, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(ILjava/lang/String;)V
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_44

    .line 964
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_44
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 965
    throw p0
.end method

.method public final reportVibrationInfo(Landroid/os/ExternalVibration;)V
    .registers 4

    .line 2601
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/GoodCatchManager;->isVibrateCatchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2602
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2603
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    .line 2604
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    move-result p1

    if-eqz p1, :cond_28

    const-string v0, "com.android.server.telecom"

    .line 2607
    :cond_28
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/GoodCatchManager;->updateVibrateMode(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public final reportVibrationInfo(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationAttributes;)V
    .registers 4

    .line 2594
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p2

    const/16 v0, 0x12

    if-eq v0, p2, :cond_1d

    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    if-eqz p2, :cond_1d

    .line 2595
    invoke-virtual {p2}, Lcom/samsung/android/server/audio/GoodCatchManager;->isVibrateCatchEnabled()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 2596
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->getActualPackageName(Lcom/android/server/vibrator/Vibration;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/audio/GoodCatchManager;->updateVibrateMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public semGetNumberOfSupportedPatterns()I
    .registers 1

    .line 2505
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {p0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getSupportedPatternSize()I

    move-result p0

    return p0
.end method

.method public final sendDataToHqm()V
    .registers 3

    .line 2614
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    if-eqz v0, :cond_e

    .line 2615
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sendHqmVibratorData(Lcom/samsung/android/server/vibrator/VibratorHqmData;)V

    .line 2616
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    invoke-virtual {p0}, Lcom/samsung/android/server/vibrator/VibratorHqmData;->clear()V

    :cond_e
    return-void
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .registers 19

    move-object v0, p0

    move/from16 v7, p3

    move-object/from16 v1, p4

    const-string/jumbo v2, "setAlwaysOnEffect"

    const-wide/32 v8, 0x800000

    .line 394
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 396
    :try_start_e
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE_ALWAYS_ON"

    const-string/jumbo v4, "setAlwaysOnEffect"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    if-nez v1, :cond_33

    .line 401
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_6c

    .line 402
    :try_start_1e
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->delete(I)V

    .line 403
    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v7}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->onAllVibratorsLocked(Ljava/util/function/Consumer;)V

    .line 408
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_30

    .line 429
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v10

    :catchall_30
    move-exception v0

    .line 408
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v0

    .line 411
    :cond_33
    invoke-static/range {p4 .. p4}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v2
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_6c

    const/4 v3, 0x0

    if-nez v2, :cond_3e

    .line 429
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_3e
    move-object/from16 v2, p5

    .line 414
    :try_start_40
    invoke-virtual {p0, v2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v5

    .line 415
    iget-object v11, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_6c

    .line 416
    :try_start_47
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;

    move-result-object v6

    if-nez v6, :cond_52

    .line 420
    monitor-exit v11
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_69

    .line 429
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    .line 422
    :cond_52
    :try_start_52
    new-instance v12, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    move-object v1, v12

    move/from16 v2, p3

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;-><init>(IILjava/lang/String;Landroid/os/VibrationAttributes;Landroid/util/SparseArray;)V

    .line 424
    iget-object v1, v0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    invoke-virtual {p0, v12}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    .line 426
    monitor-exit v11
    :try_end_65
    .catchall {:try_start_52 .. :try_end_65} :catchall_69

    .line 429
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return v10

    :catchall_69
    move-exception v0

    .line 426
    :try_start_6a
    monitor-exit v11
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v0

    .line 429
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 430
    throw v0
.end method

.method public final setExternalControl(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 807
    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 808
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final shouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1357
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p1

    .line 1358
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget v1, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object p0, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 1359
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    iget-wide v4, p1, Lcom/android/server/vibrator/Vibration;->startUptimeMillis:J

    .line 1358
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSettings;->shouldCancelVibrationOnScreenOff(ILjava/lang/String;IJ)Z

    move-result p0

    return p0
.end method

.method public final shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z
    .registers 5

    .line 1101
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_10

    if-eqz p2, :cond_f

    const/4 p0, -0x1

    if-ne p2, p0, :cond_e

    goto :goto_f

    :cond_e
    move v0, v1

    :cond_f
    :goto_f
    return v0

    .line 1107
    :cond_10
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    and-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p1

    if-ne p0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0
.end method

.method public final shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z
    .registers 5

    .line 1090
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    if-ne v0, p3, :cond_e

    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final shouldIgnoreVibrationForOngoingLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-eqz v0, :cond_7

    .line 1002
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    return-object p0

    .line 1005
    :cond_7
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_79

    .line 1010
    :cond_13
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    .line 1011
    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_20

    return-object v1

    .line 1016
    :cond_20
    iget-object v2, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_45

    .line 1017
    iget-object p0, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    const-string p1, "com.google.android.cellbroadcastreceiver"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 1018
    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result p0

    if-nez p0, :cond_42

    const-string p0, "VibratorManagerService"

    const-string p1, "allow cellbroadcastreceiver alarm vibration"

    .line 1019
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1022
    :cond_42
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ALARM:Lcom/android/server/vibrator/Vibration$Status;

    return-object p0

    .line 1025
    :cond_45
    iget-object v2, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_70

    .line 1026
    iget-object v2, v0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    const-string v2, "VIBRATE_CALL"

    .line 1027
    invoke-virtual {v0, v2}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    return-object v1

    .line 1030
    :cond_64
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->isDocomoVibrate(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6d

    return-object v1

    .line 1034
    :cond_6d
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_RINGTONE:Lcom/android/server/vibrator/Vibration$Status;

    return-object p0

    .line 1037
    :cond_70
    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result p0

    if-eqz p0, :cond_79

    .line 1038
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    return-object p0

    :cond_79
    :goto_79
    return-object v1
.end method

.method public final shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1053
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_2b

    .line 1054
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1055
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1056
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Vibration is ignored for uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SPEG"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    return-object p0

    .line 1061
    :cond_2b
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/vibrator/VibrationSettings;->shouldIgnoreVibration(ILandroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    if-eqz v0, :cond_34

    return-object v0

    .line 1066
    :cond_34
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result p0

    if-eqz p0, :cond_43

    const/4 p1, 0x2

    if-ne p0, p1, :cond_40

    .line 1071
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    return-object p0

    .line 1073
    :cond_40
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    return-object p0

    :cond_43
    const/4 p0, 0x0

    return-object p0
.end method

.method public final startAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x3

    .line 1132
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 1131
    invoke-virtual {p0, p1, p3}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result p0

    return p0
.end method

.method public final startVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationLocked"

    .line 834
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 839
    :try_start_9
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget v4, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v5, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    .line 840
    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 839
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/vibrator/InputDeviceDelegate;->vibrateIfAvailable(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 842
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_4b

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 845
    :cond_23
    :try_start_23
    new-instance v8, Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/vibrator/VibrationStepConductor;-><init>(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;Landroid/util/SparseArray;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V

    .line 847
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez p1, :cond_3e

    .line 848
    invoke-virtual {p0, v8}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_4b

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 852
    :cond_3e
    :try_start_3e
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 853
    iput-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 854
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_4b

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_4b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 857
    throw p0
.end method

.method public final startVibrationOnThreadLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationThreadLocked"

    .line 862
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 864
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    .line 865
    iget v3, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v4, v2, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v3

    if-eqz v3, :cond_40

    const/4 p0, 0x2

    if-eq v3, p0, :cond_22

    .line 886
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_60

    .line 889
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_22
    :try_start_22
    const-string p0, "VibratorManagerService"

    .line 883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start AppOpsManager operation errored for uid "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_60

    .line 889
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_40
    :try_start_40
    const-string/jumbo v2, "vibration"

    const/4 v3, 0x0

    .line 868
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 869
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 870
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v2, p1}, Lcom/android/server/vibrator/VibrationThread;->runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result p1

    if-nez p1, :cond_5a

    const/4 p1, 0x0

    .line 872
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 873
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_60

    .line 889
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    .line 881
    :cond_5a
    :try_start_5a
    sget-object p0, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_60

    .line 889
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_60
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 890
    throw p0
.end method

.method public systemReady()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "VibratorManagerService"

    const-string v1, "Initializing VibratorManager service..."

    .line 306
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "systemReady"

    const-wide/32 v1, 0x800000

    .line 307
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x1

    .line 310
    :try_start_12
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_28

    .line 311
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibratorController;->reloadVibratorInfoIfNeeded()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 314
    :cond_28
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V

    .line 315
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-virtual {v0}, Lcom/android/server/vibrator/InputDeviceDelegate;->onSystemReady()V

    .line 317
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    invoke-virtual {v0, v4}, Lcom/android/server/vibrator/VibrationSettings;->addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V
    :try_end_3f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_56

    .line 322
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_42
    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 324
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_53

    const-string v0, "VibratorManagerService"

    const-string v3, "VibratorManager service initialized"

    .line 325
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 330
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->onCustomSystemReady()V

    return-void

    :catchall_53
    move-exception p0

    .line 324
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0

    :catchall_56
    move-exception v0

    .line 322
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 323
    :try_start_5a
    iput-boolean v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    .line 324
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_68

    const-string p0, "VibratorManagerService"

    const-string v3, "VibratorManager service initialized"

    .line 325
    invoke-static {p0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 327
    throw v0

    :catchall_68
    move-exception p0

    .line 324
    :try_start_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method public final transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/vibrator/VibratorController;",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 1371
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 1372
    :goto_c
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 1373
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2c
    return-object v0
.end method

.method public unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 6

    .line 381
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string/jumbo v2, "unregisterVibratorStateListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    if-nez p0, :cond_16

    const/4 p0, 0x0

    return p0

    .line 388
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorController;->unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result p0

    return p0
.end method

.method public final updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 814
    :goto_1
    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 815
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    .line 816
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    if-nez v1, :cond_22

    goto :goto_41

    .line 820
    :cond_22
    iget v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->uid:I

    iget-object v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->opPkg:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v3

    if-nez v3, :cond_3b

    .line 823
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/vibrator/PrebakedSegment;I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v2

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    .line 828
    :goto_3c
    iget v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_44
    return-void
.end method

.method public updateServiceState()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "VibratorManagerService"

    const-string v2, "Updating device state..."

    .line 775
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 778
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateInputDevices()Z

    move-result v2

    .line 777
    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDeviceVibrators(Z)Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 780
    :goto_18
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 781
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 784
    :cond_2e
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez v3, :cond_34

    .line 785
    monitor-exit v0

    return-void

    .line 788
    :cond_34
    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v3

    .line 789
    iget v4, v3, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v5, v3, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v3

    if-nez v1, :cond_46

    if-eqz v3, :cond_70

    :cond_46
    const-string v4, "VibratorManagerService"

    .line 794
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Canceling vibration because settings changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_56

    const-string v3, "input devices changed"

    .line 795
    :cond_56
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 794
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 799
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz p0, :cond_70

    const-string v1, "cancel"

    .line 800
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    .line 803
    :cond_70
    monitor-exit v0

    return-void

    :catchall_72
    move-exception p0

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw p0
.end method

.method public updateWatchConnectionState(Z)V
    .registers 2

    .line 2749
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateWatchConnectionState(Z)V

    return-void
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 7

    .line 436
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/Vibration;

    return-void
.end method

.method public final vibrateInternal(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/Vibration;
    .registers 28

    move-object/from16 v1, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v13, p3

    move-object/from16 v0, p4

    move-object/from16 v9, p5

    move-object/from16 v14, p6

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate, reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v11, 0x800000

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 448
    :try_start_26
    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string/jumbo v4, "vibrate"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    if-nez v14, :cond_3f

    const-string v0, "VibratorManagerService"

    const-string/jumbo v1, "token must not be null"

    .line 451
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_26f

    .line 608
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    .line 454
    :cond_3f
    :try_start_3f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    .line 455
    invoke-static/range {p3 .. p3}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v2
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_26f

    if-nez v2, :cond_4c

    .line 608
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    .line 458
    :cond_4c
    :try_start_4c
    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_5f

    const-string v0, "VibratorManagerService"

    const-string v1, "There is no vibration motor"

    .line 459
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_26f

    .line 608
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    :cond_5f
    :try_start_5f
    const-string v2, "VibratorManagerService"

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibrate - uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", opPkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", attrs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v1, v13}, Lcom/android/server/vibrator/VibratorManagerService;->getComposedEffect(Landroid/os/CombinedVibration;)Landroid/os/VibrationEffect$Composed;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    const/4 v10, -0x1

    if-nez v2, :cond_ae

    .line 470
    invoke-virtual {v1, v10, v14}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_aa
    .catchall {:try_start_5f .. :try_end_aa} :catchall_26f

    .line 608
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    .line 475
    :cond_ae
    :try_start_ae
    invoke-virtual {v1, v0, v13}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v6
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_26f

    .line 479
    :try_start_b2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService;->getNotificationService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 481
    invoke-virtual {v6}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_f8

    .line 482
    invoke-interface {v0, v8, v7}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f8

    const-string v0, "VibratorManagerService"

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibrator Cancel, notifications are disabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v1, v10, v14}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_dd} :catch_e1
    .catchall {:try_start_b2 .. :try_end_dd} :catchall_26f

    .line 608
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    :catch_e1
    move-exception v0

    :try_start_e2
    const-string v2, "VibratorManagerService"

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call NotificationManager : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_f8
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 498
    instance-of v2, v0, Landroid/os/vibrator/SemHapticSegment;

    if-eqz v2, :cond_176

    .line 499
    check-cast v0, Landroid/os/vibrator/SemHapticSegment;

    iput-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    .line 500
    invoke-virtual {v0}, Landroid/os/vibrator/SemHapticSegment;->isEffectSilent()Z

    move-result v0

    if-eqz v0, :cond_11e

    const-string v0, "VibratorManagerService"

    const-string v1, "Silent vibration is ignored."

    .line 501
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_e2 .. :try_end_11a} :catchall_26f

    .line 608
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v15

    .line 505
    :cond_11e
    :try_start_11e
    new-instance v0, Lcom/android/server/vibrator/SemVibrationBundle;

    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 506
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService;->mSemHapticSegment:Landroid/os/vibrator/SemHapticSegment;

    .line 507
    invoke-virtual {v2}, Landroid/os/vibrator/SemHapticSegment;->getType()I

    move-result v16

    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v17

    .line 508
    invoke-virtual {v1, v6}, Lcom/android/server/vibrator/VibratorManagerService;->getMagnitudeByUsage(Landroid/os/VibrationAttributes;)I

    move-result v18
    :try_end_136
    .catchall {:try_start_11e .. :try_end_136} :catchall_26f

    move-object v2, v0

    move-object/from16 v3, p6

    move-object v5, v6

    move-object/from16 p4, v6

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    move v15, v10

    move/from16 v10, v16

    move-wide/from16 v19, v11

    move/from16 v11, v17

    move/from16 v12, v18

    :try_start_14d
    invoke-direct/range {v2 .. v12}, Lcom/android/server/vibrator/SemVibrationBundle;-><init>(Landroid/os/IBinder;ILandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Landroid/os/CombinedVibration;III)V

    .line 510
    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->getSemHapticVibration(Lcom/android/server/vibrator/SemVibrationBundle;)Lcom/android/server/vibrator/SemVibration;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lcom/android/server/vibrator/SemVibration;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    if-nez v2, :cond_169

    .line 513
    invoke-virtual {v1, v15, v14}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    const-string v0, "VibratorManagerService"

    const-string v1, "The vibration was not generated normally."

    .line 514
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catchall {:try_start_14d .. :try_end_164} :catchall_26d

    .line 608
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v1, 0x0

    return-object v1

    :cond_169
    :try_start_169
    const-string v3, "VibratorManagerService"

    .line 517
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    move-object/from16 v2, p4

    goto :goto_19b

    :cond_176
    move-object/from16 p4, v6

    move-wide/from16 v19, v11

    .line 520
    new-instance v0, Lcom/android/server/vibrator/Vibration;

    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    move-object v2, v0

    move-object/from16 v3, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p4

    .line 524
    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->getMagnitudeByUsage(Landroid/os/VibrationAttributes;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/Vibration;->setMagnitude(I)V

    .line 530
    :goto_19b
    invoke-virtual {v1, v0, v13}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V

    const/4 v3, 0x3

    .line 532
    invoke-virtual {v2, v3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_1ae

    .line 535
    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;->onChange(Z)V

    goto :goto_1af

    :cond_1ae
    const/4 v4, 0x0

    .line 538
    :goto_1af
    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1b2
    .catchall {:try_start_169 .. :try_end_1b2} :catchall_26d

    :try_start_1b2
    const-string v5, "VibratorManagerService"

    .line 540
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting vibrate for vibration  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v5, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-eqz v5, :cond_21d

    .line 545
    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->isRepeating()Z

    move-result v5

    if-eqz v5, :cond_202

    .line 546
    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result v5

    if-nez v5, :cond_1e4

    iget-object v5, v0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/vibrator/VibratorManagerService;->isDocomoVibrate(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21d

    .line 547
    :cond_1e4
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibratorManagerService;->mIsExternalVibrationRepeated:Z

    .line 553
    iget-object v5, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    sget-object v6, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_ACH_REPEATED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 554
    iget-object v5, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->mute()Z

    const/4 v5, 0x0

    .line 555
    iput-object v5, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 556
    invoke-virtual {v1, v4}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V

    const-string v5, "VibratorManagerService"

    const-string v6, "Cancel ach repeat vibration"

    .line 557
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21d

    .line 560
    :cond_202
    iget-object v5, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    sget-object v6, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_ACH_NON_REPEATED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 561
    iget-object v5, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->mute()Z

    const/4 v5, 0x0

    .line 562
    iput-object v5, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 563
    invoke-virtual {v1, v4}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V

    const-string v5, "VibratorManagerService"

    const-string v6, "Cancel ach non-repeat vibration"

    .line 564
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_21d
    :goto_21d
    iget v5, v0, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v6, v0, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1, v5, v6, v7}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v5

    if-nez v5, :cond_22d

    .line 573
    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationForOngoingLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v5

    :cond_22d
    if-eqz v5, :cond_237

    .line 577
    invoke-virtual {v1, v0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 578
    monitor-exit v3
    :try_end_233
    .catchall {:try_start_1b2 .. :try_end_233} :catchall_26a

    .line 608
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 581
    :cond_237
    :try_start_237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_23b
    .catchall {:try_start_237 .. :try_end_23b} :catchall_26a

    .line 583
    :try_start_23b
    iget-object v7, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v7, :cond_244

    .line 584
    sget-object v8, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v7, v8, v4}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 592
    :cond_244
    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v4

    .line 593
    sget-object v7, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v4, v7, :cond_24f

    .line 594
    invoke-virtual {v1, v0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 597
    :cond_24f
    invoke-virtual {v1, v0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->reportVibrationInfo(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationAttributes;)V

    .line 600
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    iget-object v2, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHqmData;->increaseCount(I)V
    :try_end_25d
    .catchall {:try_start_23b .. :try_end_25d} :catchall_265

    .line 604
    :try_start_25d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_261
    .catchall {:try_start_25d .. :try_end_261} :catchall_26a

    .line 608
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_265
    move-exception v0

    .line 604
    :try_start_266
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    throw v0

    :catchall_26a
    move-exception v0

    .line 606
    monitor-exit v3
    :try_end_26c
    .catchall {:try_start_266 .. :try_end_26c} :catchall_26a

    :try_start_26c
    throw v0
    :try_end_26d
    .catchall {:try_start_26c .. :try_end_26d} :catchall_26d

    :catchall_26d
    move-exception v0

    goto :goto_272

    :catchall_26f
    move-exception v0

    move-wide/from16 v19, v11

    .line 608
    :goto_272
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 609
    throw v0
.end method
