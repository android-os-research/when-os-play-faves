.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
.super Ljava/lang/Object;
.source "Fingerprint21.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;
    }
.end annotation


# static fields
.field public static final ENROLL_TIMEOUT_SEC:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Fingerprint21"


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

.field public final mChallengeMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

.field public final mEventConsumers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;",
            ">;"
        }
    .end annotation
.end field

.field public final mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsHalStarted:Z

.field public final mIsPowerbuttonFps:Z

.field public final mIsUdfps:Z

.field public final mLazyDaemon:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field public final mLifecycleListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public mSehTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

.field public final mSensorId:I

.field public final mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

.field public final mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

.field public mTestHalEnabled:Z

.field public mTpaHalModeEnabled:Z

.field public mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

.field public final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static synthetic $r8$lambda$1ySRXjI7LQE7DJpwVOcGwiv8oEo(IIFFLcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$onPointerDown$16(IIFFLcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$71osq6M2r5AKHIjsJIQELQAZQUk(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleRevokeChallenge$5(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C-MGL-tttCZlyTHwTKMVTU3nFRw(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$onPointerUp$17(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KFvQHwuZcGAJdZ954-hvhDX6drk(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$semAddHalLifecycleListener$20(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LcyENtnCo6Qfm1IF6ao8qBvRcb0(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$onSemWirelessPowerEnabled$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$LtGkNX3nD7CFCgNoyDr5um44YKo(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$handleHalStarted$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$PFfZpTdk0B2c2EJJ82HRed8xYwA(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleLoadAuthenticatorIds$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$QuA2BPn1vlUtZPrScTxL63onh7g(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleResetLockout$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$RPI_iT2qKocbtyTjyrDv8LrjRTg(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V
    .registers 13

    invoke-direct/range {p0 .. p12}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleAuthenticate$9(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$RyW77qQSs03CyEa8XgLO3lynIgY(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$serviceDied$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TzJG0co4nvf6g7ixAEHq27vLd9w(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$onSemOnHandModeEnabled$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$Uhb-3VcyRaKoBQS2rx3cI5R2d1k(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$semRemoveHalLifecycleListener$21(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yj2s_zGKC2_M4pkwV47_wt40hyE(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleInternalCleanup$14(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aQg9OYBM4dGwqMDT0eH6EThb2Ns(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleFingerDetect$8(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bZ3hEMDpQJFTW1TDU_zr5405B0s(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;[BLjava/lang/String;I)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleEnroll$6(ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;[BLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$btelUG94Pueyif7-5wVeHeohCmQ(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$cancelAuthentication$11(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$d03zlc_co5raUI_CptxvFjpvs28(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$onUiReady$18(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fgnvyhyBwAhjbRIBs0gb-TAIk2w(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$rename$15(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gCg1-YGymSoA8ZT8abAR_22qfSE(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$cancelEnrollment$7(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$jiwGFsjnqqMX7aOr0Ylmg7vtm-Y(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZLandroid/os/Bundle;)V
    .registers 14

    invoke-direct/range {p0 .. p13}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$semScheduleAuthenticate$19(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0B93So6g3VKFkvNEVDUIGCmra8(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleGenerateChallenge$4(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qRVhUjdydayTvs7U6yvecjYCFLc(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleRemove$12(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-nOCcXDwMcPpcPEM8kRiw3_UuY(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$startPreparedClient$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zdYT8KPPfGPkjLtuwk_Fuz5k_JQ(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->lambda$scheduleRemoveAll$13(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEnrollSession(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/content/BroadcastReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDaemon(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchAcquisitionEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchAcquisitionEvent(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchAuthenticationStartedEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchAuthenticationStartedEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchAuthenticationStoppedEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchAuthenticationStoppedEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchEnrollStartedEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchEnrollStartedEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchErrorEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchErrorEvent(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchGestureEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchGestureEvent(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOnAuthenticated(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchOnAuthenticated(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchOnEnrolledEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchOnEnrolledEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchSpenEvent(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchSpenEvent(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleInternalCleanup(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleUpdateActiveUserWithoutHandler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "Fingerprint21"

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v1, -0x2710

    .line 162
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 176
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 179
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mChallengeMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;

    .line 257
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

    .line 265
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 539
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 540
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 541
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 543
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 544
    iget p2, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 545
    iget p2, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 p3, 0x1

    const/4 p8, 0x3

    if-eq p2, p8, :cond_55

    const/4 p8, 0x2

    if-ne p2, p8, :cond_53

    goto :goto_55

    :cond_53
    move p8, v2

    goto :goto_56

    :cond_55
    :goto_55
    move p8, p3

    :goto_56
    iput-boolean p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsUdfps:Z

    const/4 p8, 0x4

    if-ne p2, p8, :cond_5c

    move v2, p3

    .line 547
    :cond_5c
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsPowerbuttonFps:Z

    .line 549
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 550
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    .line 551
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 552
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener-IA;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

    .line 553
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    .line 554
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 555
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 556
    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-direct {p2, p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 557
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    const-string/jumbo p2, "power"

    .line 567
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mPowerManager:Landroid/os/PowerManager;

    .line 568
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createHalResultCallback()Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    move-result-object p0

    invoke-virtual {p7, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->setCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;)V

    .line 571
    :try_start_9f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v3, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a6} :catch_a7

    goto :goto_ac

    :catch_a7
    const-string p0, "Unable to register user switch observer"

    .line 573
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ac
    return-void
.end method

.method private synthetic lambda$cancelAuthentication$11(Landroid/os/IBinder;J)V
    .registers 4

    .line 1054
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method private synthetic lambda$cancelEnrollment$7(Landroid/os/IBinder;J)V
    .registers 4

    .line 968
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method private synthetic lambda$handleHalStarted$1()V
    .registers 2

    const/4 v0, 0x1

    .line 757
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsHalStarted:Z

    .line 758
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchHalStarted()V

    return-void
.end method

.method public static synthetic lambda$onPointerDown$16(IIFFLcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 6

    .line 1158
    instance-of v0, p4, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v0, :cond_1c

    .line 1159
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onFingerDown received during client: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fingerprint21"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1162
    :cond_1c
    check-cast p4, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onPointerDown(IIFF)V

    return-void
.end method

.method public static synthetic lambda$onPointerUp$17(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3

    .line 1175
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v0, :cond_1c

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFingerDown received during client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Fingerprint21"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1179
    :cond_1c
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onPointerUp()V

    return-void
.end method

.method private synthetic lambda$onSemOnHandModeEnabled$23()V
    .registers 3

    .line 1539
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 1540
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    if-nez v0, :cond_b

    return-void

    .line 1543
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handle OneHandMode, client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    .line 1543
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    .line 1547
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;->onOneHandModeEnabled()V

    return-void
.end method

.method private synthetic lambda$onSemWirelessPowerEnabled$22()V
    .registers 3

    .line 1524
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 1525
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    if-nez v0, :cond_b

    return-void

    .line 1528
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handle WirelessPower, client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    .line 1528
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    .line 1532
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;->onWirelessPowerEnabled()V

    return-void
.end method

.method public static synthetic lambda$onUiReady$18(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3

    .line 1186
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v0, :cond_1c

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUiReady received during client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Fingerprint21"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1190
    :cond_1c
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onUiReady()V

    return-void
.end method

.method private synthetic lambda$rename$15(IILjava/lang/String;)V
    .registers 5

    .line 1133
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 1134
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$scheduleAuthenticate$9(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V
    .registers 38

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v23, p12

    .line 998
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1000
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v18

    .line 1001
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    move-object v1, v14

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    iget-object v15, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v15, v15, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object/from16 p1, v14

    const/4 v14, 0x2

    move-object/from16 p2, v1

    move/from16 v1, p11

    .line 1005
    invoke-virtual {v0, v14, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-object/from16 v24, v1

    const/4 v14, 0x0

    move-object/from16 v1, p1

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v24}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 1011
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setExtraAttribute(Landroid/os/Bundle;)V

    move-object v1, v0

    move-object/from16 v0, p0

    .line 1013
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$9;

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleEnroll$6(ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;[BLjava/lang/String;I)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v18, p8

    .line 921
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 923
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    move-object v1, v12

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v11, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object v7, v11

    move-object/from16 v13, p5

    invoke-direct {v11, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 926
    invoke-static {v11}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v11

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v13, v13, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 928
    invoke-virtual {v0, v14, v15}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 p1, v12

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v16, v12

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 p2, p1

    invoke-direct/range {v1 .. v18}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;I)V

    .line 934
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_49

    .line 935
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->initForUdfps()V

    .line 938
    :cond_49
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;

    invoke-direct {v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleFingerDetect$8(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .registers 24

    move-object/from16 v0, p0

    .line 977
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 979
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v15

    .line 980
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v11, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v2, 0x2

    move/from16 v5, p7

    .line 983
    invoke-virtual {v0, v2, v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object v2, v1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v15}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/IUdfpsOverlayController;Z)V

    .line 986
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleGenerateChallenge$4(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 16

    .line 864
    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v4, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v4, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v7, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 p2, 0x0

    .line 868
    invoke-virtual {p0, p2, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v0, v10

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 871
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$6;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {p1, v10, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleInternalCleanup$14(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 15

    .line 1098
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1100
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v9

    .line 1102
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintInternalCleanupClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 1103
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 1105
    invoke-virtual {p0, v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 1108
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintInternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    .line 1109
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleLoadAuthenticatorIds$2()V
    .registers 5

    .line 776
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 777
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 778
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    .line 779
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(IZ)V

    goto :goto_e

    :cond_2d
    return-void
.end method

.method private synthetic lambda$scheduleRemove$12(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 21

    move-object v0, p0

    .line 1062
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1064
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 1066
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v9

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v10, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 1068
    invoke-virtual {p0, v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 1071
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v1, v14, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleRemoveAll$13(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    .line 1080
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1083
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 1086
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v9

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v10, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 1088
    invoke-virtual {p0, v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 1091
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v1, v14, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleResetLockout$3(II)V
    .registers 12

    .line 851
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 852
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 853
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    move-object v0, v8

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;-><init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;)V

    .line 856
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, v8}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleRevokeChallenge$5(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 14

    .line 889
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semIsEnrollSession()Z

    move-result v0

    if-nez v0, :cond_13

    const-string p1, "Fingerprint21"

    const-string p2, "Already revoked"

    .line 890
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mChallengeMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;->onChallengeRevoked()V

    return-void

    .line 895
    :cond_13
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRevokeChallengeClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v0, 0x0

    .line 898
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v0, v9

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 901
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$7;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {p1, v9, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$semAddHalLifecycleListener$20(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 3

    if-eqz p1, :cond_25

    .line 1444
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1445
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsHalStarted:Z

    if-eqz v0, :cond_25

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    return-void
.end method

.method private synthetic lambda$semRemoveHalLifecycleListener$21(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 1457
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private synthetic lambda$semScheduleAuthenticate$19(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZLandroid/os/Bundle;)V
    .registers 39

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v23, p12

    .line 1383
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1385
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v18

    .line 1386
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    move-object v1, v14

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    iget-object v15, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v15, v15, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object/from16 p1, v14

    const/4 v14, 0x2

    move-object/from16 p2, v1

    move/from16 v1, p11

    .line 1390
    invoke-virtual {v0, v14, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-object/from16 v24, v1

    const/4 v14, 0x0

    move-object/from16 v1, p1

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v24}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    move-object/from16 v1, p13

    .line 1395
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setExtraAttribute(Landroid/os/Bundle;)V

    move-object v1, v0

    move-object/from16 v0, p0

    .line 1396
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$10;

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$serviceDied$0()V
    .registers 5

    .line 639
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementHALDeathCount()V

    const/4 v0, 0x0

    .line 641
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/16 v0, -0x2710

    .line 642
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    .line 644
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 645
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ERROR_HW_UNAVAILABLE for client: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Fingerprint21"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    const/4 v1, 0x1

    .line 648
    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/16 v0, 0x94

    const/4 v3, -0x1

    .line 651
    invoke-static {v0, v1, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 657
    :cond_3f
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 658
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    .line 661
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsHalStarted:Z

    .line 662
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->dispatchHalStopped()V

    return-void
.end method

.method private synthetic lambda$startPreparedClient$10(I)V
    .registers 2

    .line 1048
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
    .registers 15

    .line 626
    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;

    const-string v0, "Fingerprint21"

    invoke-direct {v4, v0, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    .line 629
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    iget p5, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-direct {v7, p5, p0, p3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    .line 631
    new-instance p5, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    .line 632
    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v8

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-object p5
.end method


# virtual methods
.method public cancelAuthentication(ILandroid/os/IBinder;J)V
    .registers 7

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthentication, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fingerprint21"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelEnrollment(ILandroid/os/IBinder;J)V
    .registers 6

    .line 968
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public containsSensor(I)Z
    .registers 2

    .line 829
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final createHalResultCallback()Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;
    .registers 2

    .line 580
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    return-object v0
.end method

.method public createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 5

    .line 1121
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 11

    .line 1366
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    move-object v0, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;)V

    return-object p1
.end method

.method public final dispatchAcquisitionEvent(III)V
    .registers 8

    .line 1584
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1585
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 1586
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    invoke-interface {v2, p1, v3, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onAcquire(IIII)V

    goto :goto_9

    .line 1588
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final dispatchAuthenticationStartedEvent()V
    .registers 3

    .line 1622
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1623
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 1624
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onAuthenticationStarted()V

    goto :goto_9

    .line 1626
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final dispatchAuthenticationStoppedEvent()V
    .registers 3

    .line 1630
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1631
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 1632
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onAuthenticationStopped()V

    goto :goto_9

    .line 1634
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final dispatchEnrollStartedEvent()V
    .registers 5

    .line 1614
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1615
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 1616
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    invoke-interface {v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onEnrollStarted(I)V

    goto :goto_9

    .line 1618
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final dispatchErrorEvent(III)V
    .registers 5

    const/16 v0, 0x8

    if-ne p2, v0, :cond_c

    const/16 v0, 0x3ec

    if-ne p3, v0, :cond_c

    const/4 v0, 0x0

    .line 1595
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 1598
    :cond_c
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter p1

    .line 1599
    :try_start_f
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 1600
    invoke-interface {v0, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onError(II)V

    goto :goto_15

    .line 1602
    :cond_25
    monitor-exit p1

    return-void

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final dispatchGestureEvent(I)V
    .registers 4

    .line 1576
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1577
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 1578
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onGestureEvent(I)V

    goto :goto_9

    .line 1580
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final dispatchHalStarted()V
    .registers 2

    .line 1556
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;

    .line 1557
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;->onHalStarted()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final dispatchHalStopped()V
    .registers 2

    .line 1562
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;

    .line 1563
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;->onHalStop()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final dispatchOnAuthenticated(Z)V
    .registers 4

    .line 1638
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1639
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 1640
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onAuthenticated(Z)V

    goto :goto_9

    .line 1642
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final dispatchOnEnrolledEvent()V
    .registers 5

    .line 1606
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1607
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 1608
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    invoke-interface {v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onEnrolled(I)V

    goto :goto_9

    .line 1610
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final dispatchSpenEvent(I)V
    .registers 4

    .line 1568
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1569
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;

    .line 1570
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;->onSpenEvent(I)V

    goto :goto_9

    .line 1572
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public dumpInternal(ILjava/io/PrintWriter;)V
    .registers 13

    const-string p1, "Fingerprint21"

    .line 1295
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1296
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 1298
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_f
    const-string/jumbo v2, "service"

    .line 1300
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "isUdfps"

    .line 1301
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsUdfps:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "isPowerbuttonFps"

    .line 1302
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsPowerbuttonFps:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1304
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1305
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_123

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1306
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1307
    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 1308
    invoke-virtual {v5, v6, v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1309
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "id"

    .line 1310
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "count"

    .line 1311
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "accept"

    .line 1312
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "reject"

    .line 1313
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "quality"

    .line 1315
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->semGetQualityForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acquire"

    .line 1317
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "lockout"

    .line 1318
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "permanentLockout"

    .line 1319
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acceptCrypto"

    .line 1322
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "rejectCrypto"

    .line 1323
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "qualityCrypto"

    .line 1325
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->semGetQualityCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acquireCrypto"

    .line 1327
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1329
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->semGetNoMatchReason(I)Landroid/util/SparseArray;

    move-result-object v5

    if-eqz v5, :cond_eb

    const/4 v7, 0x0

    .line 1331
    :goto_d3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_eb

    .line 1332
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1333
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v7, v7, 0x1

    goto :goto_d3

    .line 1336
    :cond_eb
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 1337
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v4, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v9, "extraAID"

    cmp-long v7, v4, v7

    if-nez v7, :cond_116

    const-string v4, "0L"

    goto :goto_11b

    :cond_116
    long-to-int v4, v4

    .line 1338
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :goto_11b
    invoke-virtual {v6, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1341
    :cond_11e
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_38

    :cond_123
    const-string/jumbo v3, "prints"

    .line 1344
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_129
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_129} :catch_12a

    goto :goto_130

    :catch_12a
    move-exception v2

    const-string v3, "dump formatting failure"

    .line 1346
    invoke-static {p1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1348
    :goto_130
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL deaths since last reboot: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getHALDeathCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p1, :cond_165

    .line 1352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Test HAL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTestHalEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    :cond_165
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProtoMetrics(ILjava/io/FileDescriptor;)V
    .registers 19

    move-object/from16 v0, p0

    .line 1238
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1239
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    .line 1241
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1242
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1243
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const-wide v5, 0x20b00000001L

    .line 1245
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10500000001L

    .line 1247
    invoke-virtual {v2, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1248
    iget v9, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 1249
    invoke-static {v9}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 1250
    invoke-virtual {v9, v10, v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const-wide v10, 0x10500000002L

    .line 1248
    invoke-virtual {v2, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10b00000003L

    .line 1253
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 1254
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1255
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v9

    invoke-virtual {v2, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1256
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v9

    const-wide v14, 0x10500000003L

    invoke-virtual {v2, v14, v15, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1257
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v9

    const-wide v14, 0x10500000004L

    invoke-virtual {v2, v14, v15, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1259
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v9

    const-wide v14, 0x10500000005L

    .line 1258
    invoke-virtual {v2, v14, v15, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1260
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v12, 0x10b00000004L

    .line 1264
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 1265
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1266
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v7

    invoke-virtual {v2, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1267
    invoke-virtual {v1, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v4

    const-wide v7, 0x10500000003L

    invoke-virtual {v2, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v4, 0x0

    const-wide v7, 0x10500000004L

    .line 1268
    invoke-virtual {v2, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1269
    invoke-virtual {v2, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1270
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1272
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_1f

    .line 1274
    :cond_d1
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 14

    const-wide v0, 0x20b00000001L

    .line 1207
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1209
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000002L

    const/4 p1, 0x1

    .line 1210
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1211
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p1

    if-eqz p1, :cond_2f

    const-wide v4, 0x20e00000008L

    const/4 p1, 0x0

    .line 1212
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2f
    const-wide v4, 0x10500000003L

    .line 1214
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1215
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result p1

    .line 1214
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000004L

    .line 1216
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object p1

    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 1218
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_97

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 1219
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const-wide v4, 0x20b00000005L

    .line 1221
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1222
    invoke-virtual {p2, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000002L

    .line 1223
    iget v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 1224
    invoke-virtual {v8, v9, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 1223
    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1225
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_5b

    :cond_97
    const-wide v2, 0x10800000006L

    .line 1228
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000007L

    .line 1230
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1233
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 5

    .line 1151
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getCurrentUser()I
    .registers 1

    .line 824
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    return p0
.end method

.method public declared-synchronized getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 669
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTestHalEnabled:Z

    if-eqz v0, :cond_2a

    .line 671
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    if-eqz v0, :cond_1a

    .line 672
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;-><init>(Landroid/content/Context;IZ)V

    .line 673
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_107

    .line 674
    monitor-exit p0

    return-object v0

    .line 677
    :cond_1a
    :try_start_1a
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    .line 678
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_107

    .line 679
    monitor-exit p0

    return-object v0

    .line 682
    :cond_2a
    :try_start_2a
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTpaHalModeEnabled:Z

    if-eqz v0, :cond_36

    .line 683
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SemFingerprint30;

    if-eqz v0, :cond_36

    .line 684
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSehTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_107

    monitor-exit p0

    return-object v0

    .line 689
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_107

    if-eqz v0, :cond_3c

    .line 690
    monitor-exit p0

    return-object v0

    :cond_3c
    :try_start_3c
    const-string v0, "Fingerprint21"

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Daemon was null, reconnecting, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 694
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_107

    .line 698
    :try_start_58
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    if-eqz v0, :cond_63

    .line 699
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    goto :goto_7b

    .line 701
    :cond_63
    invoke-static {}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->getService()Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_69
    .catch Ljava/util/NoSuchElementException; {:try_start_58 .. :try_end_69} :catch_73
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_69} :catch_6a
    .catchall {:try_start_58 .. :try_end_69} :catchall_107

    goto :goto_7b

    :catch_6a
    move-exception v0

    :try_start_6b
    const-string v1, "Fingerprint21"

    const-string v2, "Failed to get fingerprint HAL"

    .line 708
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    :catch_73
    move-exception v0

    const-string v1, "Fingerprint21"

    const-string v2, "NoSuchElementException"

    .line 706
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    :goto_7b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_89

    const-string v0, "Fingerprint21"

    const-string v2, "Fingerprint HAL not available"

    .line 712
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_6b .. :try_end_87} :catchall_107

    .line 713
    monitor-exit p0

    return-object v1

    .line 716
    :cond_89
    :try_start_89
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 720
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_107

    .line 727
    :try_start_96
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    invoke-interface {v0, v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v6
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_9e} :catch_9f
    .catchall {:try_start_96 .. :try_end_9e} :catchall_107

    goto :goto_aa

    :catch_9f
    move-exception v0

    :try_start_a0
    const-string v6, "Fingerprint21"

    const-string v7, "Failed to set callback for fingerprint HAL"

    .line 729
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-wide v6, v2

    :goto_aa
    const-string v0, "Fingerprint21"

    .line 733
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fingerprint HAL ready, HAL ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v6, v2

    if-eqz v0, :cond_d5

    .line 735
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleLoadAuthenticatorIds()V

    .line 736
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->updateCacheForHAL()V

    .line 739
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->handleHalStarted()V

    goto :goto_de

    :cond_d5
    const-string v0, "Fingerprint21"

    const-string v2, "Unable to set callback"

    .line 742
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 747
    :goto_de
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_103

    const-string v0, "Fingerprint21"

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDaemon FP_FINISH ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_103
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_105
    .catchall {:try_start_a0 .. :try_end_105} :catchall_107

    monitor-exit p0

    return-object v0

    :catchall_107
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnrolledFingerprints(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 1141
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 1652
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getLazyDaemon()Ljava/util/function/Supplier;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
            ">;"
        }
    .end annotation

    .line 1657
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public getLockoutModeForUser(II)I
    .registers 3

    .line 1146
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result p0

    return p0
.end method

.method public getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;
    .registers 1

    .line 1647
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScheduler;

    return-object p0
.end method

.method public getSensorId()I
    .registers 1

    .line 1693
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    return p0
.end method

.method public getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 2

    .line 843
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method public getSensorProperties()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 836
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSensorPropertiesInternal()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 1

    .line 1662
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method public getUdfpsOverlayController()Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .registers 1

    .line 763
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-object p0
.end method

.method public final handleHalStarted()V
    .registers 3

    .line 756
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isHardwareDetected(I)Z
    .registers 2

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public onPointerDown(JIIIFF)V
    .registers 8

    .line 1157
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;

    invoke-direct {p3, p4, p5, p6, p7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;-><init>(IIFF)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClientIfMatches(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onPointerUp(JI)V
    .registers 8

    .line 1169
    sget-boolean p3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz p3, :cond_f

    .line 1170
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    const-wide/16 v0, 0x0

    const/4 v2, 0x6

    const v3, 0x11171

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onAcquired(JII)V

    .line 1174
    :cond_f
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda7;

    invoke-direct {p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClientIfMatches(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onSemOnHandModeEnabled()V
    .registers 3

    .line 1538
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSemWirelessPowerEnabled()V
    .registers 3

    .line 1523
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUiReady(JI)V
    .registers 4

    .line 1185
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda4;

    invoke-direct {p3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClientIfMatches(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public rename(IIILjava/lang/String;)V
    .registers 6

    .line 1132
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZ)J
    .registers 28

    move-object/from16 v0, p0

    .line 1038
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v14

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide v9, v14

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    .line 1040
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V

    return-wide v14
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V
    .registers 30

    move-object/from16 v1, p0

    .line 997
    iget-object v14, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda19;

    move-object v0, v15

    move/from16 v2, p5

    move-object/from16 v3, p2

    move-wide/from16 v4, p9

    move-object/from16 v6, p7

    move-wide/from16 v7, p3

    move/from16 v9, p11

    move-object/from16 v10, p8

    move/from16 v11, p6

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J
    .registers 22

    move-object v1, p0

    .line 919
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v10

    .line 920
    iget-object v12, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda2;

    move-object v0, v13

    move/from16 v2, p4

    move-object/from16 v3, p2

    move-wide v4, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;[BLjava/lang/String;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v10
.end method

.method public scheduleFingerDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J
    .registers 20

    move-object v1, p0

    .line 975
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v9

    .line 976
    iget-object v11, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda9;

    move-object v0, v12

    move/from16 v2, p3

    move-object v3, p2

    move-wide v4, v9

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v9
.end method

.method public scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 13

    .line 863
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda24;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 6

    .line 1116
    new-instance p1, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-direct {p1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5

    .line 1097
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 4

    .line 1287
    :try_start_0
    invoke-interface {p3}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p0, "Fingerprint21"

    const-string p1, "Failed to complete InvalidateAuthenticatorId"

    .line 1289
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method

.method public final scheduleLoadAuthenticatorIds()V
    .registers 3

    .line 775
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V
    .registers 15

    .line 1061
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda12;

    move-object v0, v7

    move-object v1, p0

    move v2, p5

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 13

    .line 1079
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda10;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleResetLockout(II[B)V
    .registers 5

    .line 850
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;II)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 7

    .line 887
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;

    invoke-direct {p5, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;ILjava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleUpdateActiveUserWithoutHandler(I)V
    .registers 3

    const/4 v0, 0x0

    .line 786
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(IZ)V

    return-void
.end method

.method public final scheduleUpdateActiveUserWithoutHandler(IZ)V
    .registers 16

    .line 800
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 801
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    .line 802
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 804
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v1, 0x0

    .line 805
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v0

    move v4, p1

    move v12, p2

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;ZLjava/util/Map;Z)V

    .line 809
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V

    invoke-virtual {p2, v0, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V
    .registers 4

    .line 1425
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_12

    .line 1426
    :try_start_5
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1427
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public semAddHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 4

    .line 1443
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semGetBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;
    .registers 1

    .line 1689
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    return-object p0
.end method

.method public semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1

    .line 1415
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    return-object p0
.end method

.method public semGetHalResultController()Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;
    .registers 1

    .line 1685
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    return-object p0
.end method

.method public semGetRemainingLockoutTime(I)I
    .registers 2

    .line 1501
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getRemainingLockoutTime(I)I

    move-result p0

    return p0
.end method

.method public semGetSecurityLevel()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public semGetSensorId()I
    .registers 1

    .line 1464
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    return p0
.end method

.method public semIsEnrollSession()Z
    .registers 1

    .line 1506
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public semNotifyTspBlockState(Z)V
    .registers 3

    .line 1512
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 1513
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-eqz v0, :cond_17

    .line 1514
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    const/4 v0, 0x6

    if-eqz p1, :cond_12

    const/16 p1, 0x3ec

    goto :goto_14

    :cond_12
    const/16 p1, 0x3ed

    .line 1515
    :goto_14
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    :cond_17
    return-void
.end method

.method public semRemoveEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V
    .registers 3

    .line 1434
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_a

    .line 1436
    :try_start_5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mEventConsumers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1438
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public semRemoveHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 4

    .line 1455
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semScheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZLandroid/os/Bundle;)J
    .registers 33

    move-object/from16 v7, p0

    .line 1378
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v15

    .line 1379
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    move-object/from16 v10, p8

    invoke-static {v0, v10}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semIsEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v4, p8

    .line 1380
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 1382
    :cond_26
    iget-object v14, v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda11;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p2

    move-wide v4, v15

    move-object/from16 v6, p7

    move-wide/from16 v7, p3

    move/from16 v9, p9

    move-object/from16 v10, p8

    move/from16 v11, p6

    move/from16 v12, p10

    move-wide/from16 v17, v15

    move-object v15, v13

    move/from16 v13, p11

    move-object/from16 v19, v14

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZLandroid/os/Bundle;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v17
.end method

.method public semSetTpaHalEnabled(Z)V
    .registers 7

    .line 1469
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTpaHalModeEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1472
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTpaHalModeEnabled:Z

    .line 1473
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "biometric_tpa_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    if-eqz p1, :cond_2c

    .line 1475
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSehTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    if-nez p1, :cond_29

    .line 1476
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-direct {p1, v1, v4, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSehTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    .line 1477
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    invoke-virtual {p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    :cond_29
    or-int/lit8 p1, v0, 0x2

    goto :goto_38

    .line 1481
    :cond_2c
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSehTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    if-eqz p1, :cond_36

    .line 1482
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->destroy()V

    const/4 p1, 0x0

    .line 1483
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSehTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    :cond_36
    and-int/lit8 p1, v0, -0x3

    .line 1487
    :goto_38
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3, p1}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1488
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->semSyncTemplateWithHal()V

    return-void
.end method

.method public final semSyncTemplateWithHal()V
    .registers 4

    .line 1666
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$11;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public semUpdateTpaAction()V
    .registers 2

    .line 1493
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTpaHalModeEnabled:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSehTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    if-eqz p0, :cond_b

    .line 1494
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->postUpdateAction()V

    :cond_b
    return-void
.end method

.method public serviceDied(J)V
    .registers 3

    const-string p1, "Fingerprint21"

    const-string p2, "HAL died"

    .line 637
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
    .registers 2

    .line 1201
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 2

    .line 1359
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTestHalEnabled:Z

    return-void
.end method

.method public setTpaHalModeEnabled(Z)V
    .registers 2

    .line 1681
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTpaHalModeEnabled:Z

    return-void
.end method

.method public setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 2

    .line 1196
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-void
.end method

.method public startPreparedClient(II)V
    .registers 4

    .line 1048
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCacheForHAL()V
    .registers 1

    return-void
.end method
