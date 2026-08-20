.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
.super Ljava/lang/Object;
.source "FingerprintProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;
    }
.end annotation


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

.field public final mChallengeMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;

.field public mDaemonSdkVersion:Ljava/lang/String;

.field public final mHalInstanceName:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsHalStarted:Z

.field public final mLazySehFingerprint:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;",
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

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field public mSecurityLevel:I

.field public mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

.field public final mSensors:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

.field public final mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

.field public mTestHalEnabled:Z

.field public mTpaHalModeEnabled:Z

.field public mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

.field public mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;


# direct methods
.method public static synthetic $r8$lambda$-Y3g1EgpMJBjjVb504Zl2MkAuZE(Landroid/hardware/biometrics/fingerprint/SensorLocation;)Landroid/hardware/biometrics/SensorLocationInternal;
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$new$0(Landroid/hardware/biometrics/fingerprint/SensorLocation;)Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6VDaafJbjOwC9fQXxPAheILu3UI(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZLandroid/os/Bundle;)V
    .registers 15

    invoke-direct/range {p0 .. p14}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$semScheduleAuthenticate$28(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8JdnmpJyvKfEswb07TO4lW9-FxU(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleResetLockout$3(II[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$DJ9pAAoefAehAaphoa0yQDRVxIA(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$handleHalStarted$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$DlfC1DxcA4cmyiLR8rKszoVCbXo(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleInternalCleanup$13(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FQVt6-b7B5HjgncvUTHDd-u4aXw(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$semProcessFidoCommand$26(ILcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IYLYuiHplK6d8jbRkIvzcmriHag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleLoadAuthenticatorIdsForUser$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$JPuoEpdb10Ymk9auhexxqlsGVcM(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$onSemWirelessPowerEnabled$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$Oi9vtWrka0-0ij2Hi77_XqLBYBc(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$binderDied$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$PWSdcGHoQSTEDsWjEk4ByT4XDXs(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$semScheduleSensorTest$24(Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pj4CBMCNfAUU3rrDgSJd8_gag0I(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;ILjava/lang/String;J)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleRevokeChallenge$5(ILandroid/os/IBinder;ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$SGrPj0Tt-UQaxNx9EdHnmwhCiNo(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$onSemOnHandModeEnabled$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$SLbX56Sk0BniuVaDC0RmZZ8l_Pw(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleInvalidateAuthenticatorId$14(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uwm6YFcsTplVAazWhIfLMeYcHbQ(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleGenerateChallenge$4(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xx_qXkc0_vkD1OA-8n_R5TMya94(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$semRemoveHalLifecycleListener$21(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aJXwFVI6QJao3QEhWW5ix_UFgMM(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$cancelEnrollment$7(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXVtoR9IQTkd-JT-3WLjVA1RDL0(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V
    .registers 14

    invoke-direct/range {p0 .. p13}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleAuthenticate$9(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lX8o3KsvIrph53Ri6bS8DcBgPHU(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$semScheduleUpdateTrustApp$25(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qIEAbR1uRoq0KSgs5Qq8JUFFl0A(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$semAddHalLifecycleListener$20(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r5LlcwTklXhJG5nm1se8qsPP70E(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleInvalidationRequest$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$sxq6EX2j5-xSDME6sgnPKtOPSy4(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IIFFLcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$onPointerDown$15(IIFFLcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDsNK7jWBFtGs6EPYtEiYuaKLto(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleFingerDetect$8(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uSheDvLkfFKzQaP8xooqtiKnwWI(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$startPreparedClient$10(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$w0T617NwooK92dqMhT0tSiCijYQ(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;I[BLjava/lang/String;I)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleEnroll$6(ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;I[BLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xb81NG0uKTewlRf8hqJiAb6XNwo(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$onPointerUp$16(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yDvLfXhE_SvK1xn6HJ_lg_7qZlI(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$onUiReady$17(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yrNPlIj_V3iDab7O9et6alvugaU(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$cancelAuthentication$11(ILandroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$znIXeODH--eljYwAGZhqn9JONoA(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$semOpenTzSession$27(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zsmO_EbrimCJ4hcLN1TYRxBfRJY(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;[IILjava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->lambda$scheduleRemoveSpecifiedIds$12(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;[IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDaemonSdkVersion(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemonSdkVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEnrollSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/BroadcastReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleRequestCommandWithoutScheduler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;III[B[B)I
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleLoadAuthenticatorIdsForUser(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCacheForHAL(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->updateCacheForHAL(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;[Landroid/hardware/biometrics/fingerprint/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 33

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 247
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    .line 147
    iput v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSecurityLevel:I

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-direct {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    invoke-direct {v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mChallengeMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;

    .line 248
    iput-object v10, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    .line 249
    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-object/from16 v0, p4

    .line 250
    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    .line 251
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    move-object/from16 v13, p5

    .line 258
    iput-object v13, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 259
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 260
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener-IA;)V

    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    move-object/from16 v0, p7

    .line 261
    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 263
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getWorkaroundSensorProps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 265
    array-length v15, v11

    move v8, v12

    :goto_67
    if-ge v8, v15, :cond_14e

    aget-object v0, v11, v8

    .line 266
    iget-object v1, v0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v7, v1, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v2, v0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget-object v2, v2, Landroid/hardware/biometrics/common/CommonProps;->componentInfo:[Landroid/hardware/biometrics/common/ComponentInfo;

    if-eqz v2, :cond_ae

    .line 270
    array-length v3, v2

    move v4, v12

    :goto_7c
    if-ge v4, v3, :cond_ae

    aget-object v5, v2, v4

    .line 271
    new-instance v6, Landroid/hardware/biometrics/ComponentInfoInternal;

    iget-object v12, v5, Landroid/hardware/biometrics/common/ComponentInfo;->componentId:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v5, Landroid/hardware/biometrics/common/ComponentInfo;->hardwareVersion:Ljava/lang/String;

    move/from16 v23, v3

    iget-object v3, v5, Landroid/hardware/biometrics/common/ComponentInfo;->firmwareVersion:Ljava/lang/String;

    move/from16 p2, v8

    iget-object v8, v5, Landroid/hardware/biometrics/common/ComponentInfo;->serialNumber:Ljava/lang/String;

    iget-object v5, v5, Landroid/hardware/biometrics/common/ComponentInfo;->softwareVersion:Ljava/lang/String;

    move-object/from16 v16, v6

    move-object/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v8

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Landroid/hardware/biometrics/ComponentInfoInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v8, p2

    move-object/from16 v2, v22

    move/from16 v3, v23

    const/4 v12, 0x0

    goto :goto_7c

    :cond_ae
    move/from16 p2, v8

    .line 277
    new-instance v12, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object v2, v0, Landroid/hardware/biometrics/fingerprint/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v3, v2, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    iget-byte v4, v2, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    iget v2, v2, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    iget-byte v5, v0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorType:B

    iget-boolean v6, v0, Landroid/hardware/biometrics/fingerprint/SensorProps;->halControlsIllumination:Z

    const/16 v23, 0x1

    .line 285
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c9

    move-object/from16 v24, v14

    goto :goto_e4

    .line 292
    :cond_c9
    iget-object v0, v0, Landroid/hardware/biometrics/fingerprint/SensorProps;->sensorLocations:[Landroid/hardware/biometrics/fingerprint/SensorLocation;

    .line 286
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 292
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object/from16 v24, v0

    :goto_e4
    move-object/from16 v16, v12

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v2

    move-object/from16 v20, v1

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-direct/range {v16 .. v24}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    .line 293
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v4, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    iget-object v6, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v0, v8

    move-object/from16 v2, p0

    move-object v5, v12

    move-object/from16 v16, v6

    move-object/from16 v6, p5

    move v11, v7

    move-object/from16 v7, p6

    move/from16 v17, p2

    move-object v13, v8

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;-><init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 297
    iget-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v17, 0x1

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    const/4 v12, 0x0

    goto/16 :goto_67

    :cond_14e
    const-string/jumbo v0, "power"

    .line 302
    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 303
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    iput-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLazySehFingerprint:Ljava/util/function/Supplier;

    return-void
.end method

.method private synthetic lambda$binderDied$18()V
    .registers 6

    const/4 v0, 0x0

    .line 941
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;

    const/4 v1, 0x0

    move v2, v1

    .line 943
    :goto_5
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 944
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 945
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 946
    invoke-static {v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementHALDeathCount()V

    .line 947
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->onBinderDied()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 951
    :cond_28
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    .line 952
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsHalStarted:Z

    .line 953
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->dispatchHalStopped()V

    return-void
.end method

.method private synthetic lambda$cancelAuthentication$11(ILandroid/os/IBinder;J)V
    .registers 5

    .line 660
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p0

    .line 661
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method private synthetic lambda$cancelEnrollment$7(ILandroid/os/IBinder;J)V
    .registers 5

    .line 573
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method private synthetic lambda$handleHalStarted$19()V
    .registers 2

    const/4 v0, 0x1

    .line 1007
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsHalStarted:Z

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->dispatchHalStarted()V

    return-void
.end method

.method public static synthetic lambda$new$0(Landroid/hardware/biometrics/fingerprint/SensorLocation;)Landroid/hardware/biometrics/SensorLocationInternal;
    .registers 5

    .line 287
    new-instance v0, Landroid/hardware/biometrics/SensorLocationInternal;

    iget-object v1, p0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->display:Ljava/lang/String;

    iget v2, p0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationX:I

    iget v3, p0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorLocationY:I

    iget p0, p0, Landroid/hardware/biometrics/fingerprint/SensorLocation;->sensorRadius:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method private synthetic lambda$onPointerDown$15(IIFFLcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 7

    .line 797
    instance-of v0, p5, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v0, :cond_1e

    .line 798
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onPointerDown received during client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 801
    :cond_1e
    check-cast p5, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onPointerDown(IIFF)V

    return-void
.end method

.method private synthetic lambda$onPointerUp$16(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 4

    .line 815
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v0, :cond_1e

    .line 816
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPointerUp received during client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 819
    :cond_1e
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onPointerUp()V

    return-void
.end method

.method private synthetic lambda$onSemOnHandModeEnabled$23()V
    .registers 6

    const/4 v0, 0x0

    .line 1092
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_68

    .line 1093
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object v1

    .line 1094
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v1

    .line 1095
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v2, :cond_3e

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSemOnHandModeEnabled: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_3e
    instance-of v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    if-nez v2, :cond_43

    goto :goto_65

    .line 1101
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handle OneHandMode, client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1101
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    .line 1105
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;->onOneHandModeEnabled()V

    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_68
    return-void
.end method

.method private synthetic lambda$onSemWirelessPowerEnabled$22()V
    .registers 6

    const/4 v0, 0x0

    .line 1074
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 1075
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object v1

    .line 1076
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v1

    .line 1077
    instance-of v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    if-nez v2, :cond_1e

    goto :goto_40

    .line 1080
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handle WirelessPower, client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1080
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;

    .line 1084
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;->onWirelessPowerEnabled()V

    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_43
    return-void
.end method

.method private synthetic lambda$onUiReady$17(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 4

    .line 826
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v0, :cond_1e

    .line 827
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUiReady received during client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 830
    :cond_1e
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onUiReady()V

    return-void
.end method

.method private synthetic lambda$scheduleAuthenticate$9(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V
    .registers 40

    move-object/from16 v0, p0

    move/from16 v14, p1

    move/from16 v15, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v23, p13

    .line 601
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v18

    .line 602
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;

    move-object v1, v3

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    move-object/from16 p2, v3

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 603
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    move-object/from16 v25, p2

    move-object/from16 p2, v1

    const/4 v1, 0x2

    move-object/from16 p3, v2

    move/from16 v2, p12

    .line 606
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 608
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object v20

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 610
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v24

    const/4 v1, 0x0

    move v2, v14

    move v14, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v24}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutCache;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 612
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v2, v25

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setExtraAttribute(Landroid/os/Bundle;)V

    .line 614
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;

    move/from16 v3, p1

    invoke-direct {v1, v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleEnroll$6(ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;I[BLjava/lang/String;I)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v12, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v19, p9

    .line 526
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v1

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    move/from16 v18, v1

    .line 528
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;

    move-object v1, v14

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 529
    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    new-instance v11, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object v7, v11

    move-object/from16 v13, p5

    invoke-direct {v11, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 531
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v11

    const/4 v13, 0x1

    move-object/from16 p2, v14

    const/4 v14, 0x0

    .line 532
    invoke-virtual {v0, v13, v14}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v20, p2

    move-object/from16 p2, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 535
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v1

    move-object v15, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    move-object/from16 v17, v1

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v19}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;II)V

    .line 538
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLazySehFingerprint:Ljava/util/function/Supplier;

    move-object/from16 v2, v20

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->setLazySehFingerprint(Ljava/util/function/Supplier;)V

    .line 539
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_75

    .line 540
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->initForUdfps()V

    .line 543
    :cond_75
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;

    move/from16 v3, p1

    move/from16 v4, p6

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleFingerDetect$8(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v15, p1

    .line 582
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v14

    .line 583
    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 584
    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    const/4 v1, 0x2

    move/from16 v4, p8

    .line 586
    invoke-virtual {v0, v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object v1, v13

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v16, v10

    move/from16 v10, p1

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    invoke-direct/range {v1 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/IUdfpsOverlayController;Z)V

    .line 589
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-object/from16 v2, v17

    invoke-virtual {v0, v15, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleGenerateChallenge$4(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 19

    move-object v0, p0

    move v11, p1

    .line 468
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 470
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    const/4 v1, 0x0

    .line 472
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v12

    move-object v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 476
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-virtual {p0, p1, v12, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleInternalCleanup$13(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 19

    move-object v0, p0

    move/from16 v12, p1

    .line 707
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->canUseEnumerateOperation()Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    .line 711
    :cond_a
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v9

    .line 712
    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInternalCleanupClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 714
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 715
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x3

    const/4 v14, 0x0

    .line 716
    invoke-virtual {p0, v1, v14}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 719
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v10

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 720
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v11

    move-object v1, v13

    move/from16 v4, p2

    move/from16 v6, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/List;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;Ljava/util/Map;)V

    .line 721
    new-instance v1, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    aput-object p3, v2, v14

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {p0, v12, v13, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleInvalidateAuthenticatorId$14(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 14

    .line 768
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 770
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v2

    const/4 v0, 0x0

    .line 771
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 774
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v7

    move-object v0, v9

    move v3, p2

    move v4, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;Landroid/hardware/biometrics/IInvalidationCallback;)V

    .line 775
    invoke-virtual {p0, p1, v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleInvalidationRequest$2(II)V
    .registers 11

    .line 441
    new-instance v7, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 443
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 445
    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v6

    move-object v0, v7

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;-><init>(Landroid/content/Context;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;)V

    .line 446
    invoke-virtual {p0, p2, v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleLoadAuthenticatorIdsForUser$1(II)V
    .registers 13

    .line 427
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 429
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 430
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 431
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 434
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v8

    move-object v0, v9

    move v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 435
    invoke-virtual {p0, p1, v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleRemoveSpecifiedIds$12(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;[IILjava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v14, p1

    .line 690
    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 691
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v1, p3

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 693
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v9

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 694
    invoke-virtual {v0, v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 697
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object v13

    move-object v1, v15

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p1

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 698
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$scheduleResetLockout$3(II[B)V
    .registers 16

    .line 453
    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 454
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 455
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 459
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    move-object v0, v11

    move v3, p2

    move v5, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[BLcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    .line 460
    invoke-virtual {p0, p1, v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$scheduleRevokeChallenge$5(ILandroid/os/IBinder;ILjava/lang/String;J)V
    .registers 21

    move-object v0, p0

    move v12, p1

    .line 493
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semIsEnrollSession()Z

    move-result v1

    if-nez v1, :cond_17

    .line 494
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Already revoked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mChallengeMonitor:Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;->onChallengeRevoked()V

    return-void

    .line 499
    :cond_17
    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 501
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    const/4 v1, 0x0

    .line 503
    invoke-virtual {p0, v1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move v7, p1

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V

    .line 507
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-virtual {p0, p1, v13, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$semAddHalLifecycleListener$20(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 3

    if-eqz p1, :cond_23

    .line 1038
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1039
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getHalInstance()Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsHalStarted:Z

    if-eqz v0, :cond_23

    .line 1041
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method

.method private synthetic lambda$semOpenTzSession$27(I)V
    .registers 6

    .line 1262
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;I)V

    const/4 v1, 0x2

    .line 1265
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setCommand(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object v0

    .line 1266
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setUseScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object v0

    .line 1267
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->build()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    move-result-object v0

    .line 1268
    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method private synthetic lambda$semProcessFidoCommand$26(ILcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;Ljava/util/concurrent/CountDownLatch;)V
    .registers 5

    .line 1240
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$8;

    invoke-direct {v0, p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$semRemoveHalLifecycleListener$21(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 1051
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private synthetic lambda$semScheduleAuthenticate$28(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZLandroid/os/Bundle;)V
    .registers 41

    move-object/from16 v0, p0

    move/from16 v14, p1

    move/from16 v15, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v23, p13

    .line 1307
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v18

    .line 1308
    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;

    move-object v1, v3

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    move-object/from16 p2, v3

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 1309
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLazySession()Ljava/util/function/Supplier;

    move-result-object v3

    move-object/from16 v25, p2

    move-object/from16 p2, v1

    const/4 v1, 0x2

    move-object/from16 p3, v2

    move/from16 v2, p12

    .line 1312
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 1314
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object v20

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    .line 1316
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v24

    const/4 v1, 0x0

    move v2, v14

    move v14, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v24}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutCache;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    move-object/from16 v1, p14

    move-object/from16 v2, v25

    .line 1317
    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->setExtraAttribute(Landroid/os/Bundle;)V

    .line 1318
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object v1

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;

    invoke-direct {v4, v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V

    invoke-virtual {v1, v2, v4}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$semScheduleSensorTest$24(Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V
    .registers 12

    .line 1155
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    move-object v0, v7

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSensorTestClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V

    .line 1158
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    if-eqz p1, :cond_2b

    .line 1160
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    :cond_2b
    return-void
.end method

.method private synthetic lambda$semScheduleUpdateTrustApp$25(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 1170
    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 1172
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getFirstSensorId()I

    move-result v7

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/biometrics/log/BiometricContext;)V

    .line 1195
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getFirstSensorId()I

    move-result p1

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;

    invoke-direct {p2, p0, v10}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/SemUpdateTrustAppClient;)V

    invoke-virtual {p0, p1, v10, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$startPreparedClient$10(II)V
    .registers 3

    .line 655
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->startPreparedClient(I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 939
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final canUseEnumerateOperation()Z
    .registers 6

    .line 728
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 731
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    if-eqz v0, :cond_b

    return v1

    .line 734
    :cond_b
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    .line 736
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getFirstSensorId()I

    move-result p0

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;I)V

    const/16 p0, 0xb

    .line 737
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setCommand(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 738
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->build()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    move-result-object p0

    .line 739
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startWithoutScheduler()I

    move-result p0

    if-ltz p0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1
.end method

.method public cancelAuthentication(ILandroid/os/IBinder;J)V
    .registers 13

    .line 660
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda17;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelEnrollment(ILandroid/os/IBinder;J)V
    .registers 13

    .line 572
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda23;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public containsSensor(I)Z
    .registers 2

    .line 393
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public final createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 5

    .line 743
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 4

    .line 934
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/BiometricStateCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0
.end method

.method public final dispatchHalStarted()V
    .registers 2

    .line 1502
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;

    .line 1503
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;->onHalStarted()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final dispatchHalStopped()V
    .registers 2

    .line 1508
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mLifecycleListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;

    .line 1509
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;->onHalStop()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public dumpInternal(ILjava/io/PrintWriter;)V
    .registers 12

    .line 860
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 862
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string/jumbo v2, "service"

    .line 864
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    if-eqz v2, :cond_39

    const-string/jumbo v3, "isUdfps"

    .line 868
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v3, "isPowerbuttonFps"

    .line 869
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 874
    :cond_39
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 875
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_102

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 876
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 877
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 878
    invoke-virtual {v5, v6, v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 879
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "id"

    .line 880
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "count"

    .line 881
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "accept"

    .line 882
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "reject"

    .line 883
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "quality"

    .line 885
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->semGetQualityForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acquire"

    .line 887
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "lockout"

    .line 888
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "permanentLockout"

    .line 889
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acceptCrypto"

    .line 892
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "rejectCrypto"

    .line 893
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "qualityCrypto"

    .line 895
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->semGetQualityCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "acquireCrypto"

    .line 897
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 899
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->semGetNoMatchReason(I)Landroid/util/SparseArray;

    move-result-object v4

    if-eqz v4, :cond_fd

    const/4 v5, 0x0

    .line 901
    :goto_e5
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_fd

    .line 902
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 903
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v5, v5, 0x1

    goto :goto_e5

    .line 907
    :cond_fd
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_4c

    :cond_102
    const-string/jumbo v3, "prints"

    .line 910
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_108
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_108} :catch_109

    goto :goto_113

    :catch_109
    move-exception v2

    .line 912
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dump formatting failure"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    :goto_113
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL deaths since last reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getHALDeathCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    .line 919
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemonSdkVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15b

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " daemon version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemonSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    :cond_15b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorInfo()Ljava/lang/String;

    move-result-object p1

    .line 923
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_181

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sensor info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    :cond_181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " SL : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSecurityLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpProtoMetrics(ILjava/io/FileDescriptor;)V
    .registers 3

    return-void
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 5

    .line 847
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 848
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V

    :cond_13
    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 5

    .line 786
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getAuthenticatorIds()Ljava/util/Map;

    move-result-object p0

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

.method public final getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 2

    .line 1436
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 1437
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
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

    .line 761
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getFirstSensorId()I
    .registers 3

    .line 1409
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_10

    .line 1410
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_10
    return v1
.end method

.method public declared-synchronized getHalInstance()Landroid/hardware/biometrics/fingerprint/IFingerprint;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 322
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    if-eqz v0, :cond_c

    .line 326
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal;-><init>()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_95

    monitor-exit p0

    return-object v0

    .line 330
    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    if-eqz v0, :cond_14

    .line 331
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_95

    monitor-exit p0

    return-object v0

    .line 335
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_95

    if-eqz v0, :cond_1a

    .line 336
    monitor-exit p0

    return-object v0

    .line 339
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Daemon was null, reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 342
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 341
    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_57

    .line 346
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to get daemon"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_1a .. :try_end_55} :catchall_95

    .line 347
    monitor-exit p0

    return-object v1

    :cond_57
    const/4 v2, 0x0

    .line 351
    :try_start_58
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5f} :catch_60
    .catchall {:try_start_58 .. :try_end_5f} :catchall_95

    goto :goto_6a

    :catch_60
    move-exception v0

    .line 353
    :try_start_61
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to linkToDeath"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    :goto_6a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_8e

    .line 357
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleLoadAuthenticatorIds(I)V

    .line 359
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->updateSecurityLevel(I)V

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->updateSensorInfo(I)Ljava/lang/String;

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->updateDaemonSdkVersion(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 368
    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleHalStarted()V

    .line 371
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemon:Landroid/hardware/biometrics/fingerprint/IFingerprint;
    :try_end_93
    .catchall {:try_start_61 .. :try_end_93} :catchall_95

    monitor-exit p0

    return-object v0

    :catchall_95
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLockoutModeForUser(II)I
    .registers 3

    .line 781
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/LockoutCache;->getLockoutModeForUser(I)I

    move-result p0

    return p0
.end method

.method public declared-synchronized getSehFingerprint()Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
    .registers 5

    monitor-enter p0

    .line 1417
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    if-eqz v0, :cond_f

    .line 1418
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->getSehFingerprint()Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4d

    monitor-exit p0

    return-object v0

    .line 1420
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_4d

    if-nez v0, :cond_49

    .line 1422
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getHalInstance()Landroid/hardware/biometrics/fingerprint/IFingerprint;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_2b
    .catchall {:try_start_13 .. :try_end_17} :catchall_4d

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 1424
    monitor-exit p0

    return-object v0

    .line 1426
    :cond_1c
    :try_start_1c
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1427
    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_2b
    .catchall {:try_start_1c .. :try_end_2a} :catchall_4d

    goto :goto_49

    :catch_2b
    move-exception v0

    .line 1429
    :try_start_2c
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSehFingerprint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSehFingerprint:Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
    :try_end_4b
    .catchall {:try_start_2c .. :try_end_4b} :catchall_4d

    monitor-exit p0

    return-object v0

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 4

    .line 409
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1b

    .line 412
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p0

    return-object p0

    .line 414
    :cond_1b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    if-eqz p0, :cond_29

    .line 415
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v1

    :cond_29
    return-object v1
.end method

.method public getSensorProperties()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 400
    :goto_6
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 401
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorProperties()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 3

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FingerprintProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTaskStackListener()Landroid/app/TaskStackListener;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1515
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    return-object p0
.end method

.method public final getWorkaroundSensorProps(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;"
        }
    .end annotation

    .line 967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 969
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 971
    :goto_11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_32

    const/4 v3, -0x1

    .line 972
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_2f

    .line 975
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 974
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->parseSensorLocation(Landroid/content/res/TypedArray;)Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 977
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 981
    :cond_32
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public handleHalStarted()V
    .registers 3

    .line 1006
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleRequestCommandWithoutScheduler(III[B[B)I
    .registers 10

    .line 1397
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;I)V

    .line 1400
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setCommand(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 1401
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setParam(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 1402
    invoke-virtual {p0, p4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setInputBuffer([B)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 1403
    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setOutputBuffer([B)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p0

    .line 1404
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->build()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    move-result-object p0

    .line 1405
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->startWithoutScheduler()I

    move-result p0

    return p0
.end method

.method public hasHalInstance()Z
    .registers 4

    .line 312
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 315
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHalInstanceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method public isHardwareDetected(I)Z
    .registers 2

    .line 749
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->hasHalInstance()Z

    move-result p0

    return p0
.end method

.method public onPointerDown(JIIIFF)V
    .registers 15

    const/16 v2, 0x16

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    .line 793
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    .line 796
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p3

    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;

    move-object v0, v6

    move-object v1, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IIFF)V

    invoke-virtual {p3, p1, p2, v6}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClientIfMatches(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onPointerUp(JI)V
    .registers 10

    const/16 v2, 0x16

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    .line 808
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    .line 810
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_19

    .line 811
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->dispatchOnAcquiredInternal()V

    .line 814
    :cond_19
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p3

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClientIfMatches(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onSemOnHandModeEnabled()V
    .registers 3

    .line 1091
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSemWirelessPowerEnabled()V
    .registers 3

    .line 1073
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUiReady(JI)V
    .registers 5

    .line 825
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p3

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClientIfMatches(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public final parseSensorLocation(Landroid/content/res/TypedArray;)Landroid/hardware/biometrics/SensorLocationInternal;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 993
    :cond_4
    :try_start_4
    new-instance v1, Landroid/hardware/biometrics/SensorLocationInternal;

    const/4 v2, 0x0

    .line 994
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 995
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v5, 0x2

    .line 996
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v6, 0x3

    .line 997
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-direct {v1, v3, v4, v5, p1}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1e

    return-object v1

    :catch_1e
    move-exception p1

    .line 999
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "malformed sensor location"

    invoke-static {p0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public rename(IIILjava/lang/String;)V
    .registers 5

    .line 754
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 755
    invoke-virtual {p1, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    return-void
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZ)J
    .registers 28

    move-object/from16 v0, p0

    .line 645
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

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

    .line 647
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V

    return-wide v14
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V
    .registers 31

    move-object/from16 v1, p0

    .line 600
    iget-object v15, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda21;

    move-object v0, v14

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p9

    move-object/from16 v6, p7

    move/from16 v7, p5

    move-wide/from16 v8, p3

    move/from16 v10, p11

    move-object/from16 v11, p8

    move/from16 v12, p6

    move/from16 v13, p12

    move-object/from16 v16, v14

    move/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J
    .registers 23

    move-object v1, p0

    .line 524
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v11

    .line 525
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda28;

    move-object v0, v14

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v4, v11

    move-object/from16 v6, p5

    move/from16 v7, p4

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;I[BLjava/lang/String;I)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v11
.end method

.method public scheduleFingerDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J
    .registers 21

    move-object v1, p0

    .line 580
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v10

    .line 581
    iget-object v12, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda3;

    move-object v0, v13

    move v2, p1

    move-object/from16 v3, p2

    move-wide v4, v10

    move-object/from16 v6, p4

    move/from16 v7, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v10
.end method

.method public final scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 5

    .line 375
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 379
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void

    .line 376
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to schedule client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for sensor: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5

    .line 384
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 388
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 385
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to schedule client: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for sensor: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 15

    .line 467
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda7;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 6

    .line 705
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 6

    .line 767
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILandroid/hardware/biometrics/IInvalidationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInvalidationRequest(II)V
    .registers 5

    .line 440
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleLoadAuthenticatorIds(I)V
    .registers 4

    .line 420
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 421
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    goto :goto_e

    :cond_20
    return-void
.end method

.method public final scheduleLoadAuthenticatorIdsForUser(II)V
    .registers 5

    .line 426
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V
    .registers 15

    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput p4, v4, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    .line 668
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleRemoveSpecifiedIds(ILandroid/os/IBinder;[IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 15

    .line 676
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    .line 677
    invoke-virtual {v0, v1, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 678
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    const/4 v1, 0x0

    .line 679
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 680
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v2

    aput v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_26
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v6, p4

    move-object v7, p3

    move-object v8, p5

    .line 683
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleRemoveSpecifiedIds(ILandroid/os/IBinder;[IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public final scheduleRemoveSpecifiedIds(ILandroid/os/IBinder;[IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 17

    move-object v1, p0

    .line 689
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda16;

    move-object v0, v9

    move v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;[IILjava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleResetLockout(II[B)V
    .registers 6

    .line 452
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 17

    move-object v1, p0

    .line 491
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda29;

    move-object v0, v9

    move v2, p1

    move-object v3, p3

    move v4, p2

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;ILjava/lang/String;J)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V
    .registers 4

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    .line 1020
    :goto_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1021
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_19
    return-void
.end method

.method public semAddHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 4

    .line 1037
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .registers 1

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    return-object p0
.end method

.method public semGetDaemonSdkVersion()Ljava/lang/String;
    .registers 1

    .line 1133
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemonSdkVersion:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semGetOpticalBrightnessConfigs()[Ljava/lang/String;
    .registers 9

    .line 1274
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 1276
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getFirstSensorId()I

    move-result v3

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result v2

    if-lez v2, :cond_49

    .line 1281
    :try_start_19
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1282
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception v0

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semGetOpticalBrightnessConfigs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    new-array p0, v1, [Ljava/lang/String;

    return-object p0
.end method

.method public semGetRemainingLockoutTime(I)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1121
    :goto_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 1122
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 1123
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    if-eqz v3, :cond_25

    .line 1124
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLockoutCache()Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->getRemainingLockoutTime(I)I

    move-result p0

    return p0

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return v0
.end method

.method public semGetSecurityLevel()I
    .registers 1

    .line 1293
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSecurityLevel:I

    return p0
.end method

.method public semGetSensorId()I
    .registers 1

    .line 1346
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getFirstSensorId()I

    move-result p0

    return p0
.end method

.method public semGetSensorInfo(IZ)Ljava/lang/String;
    .registers 4

    .line 1139
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    if-nez v0, :cond_d

    const-string p0, ""

    return-object p0

    :cond_d
    if-eqz p2, :cond_18

    .line 1144
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSensorInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1146
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->cancelInterruptableOperation()V

    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->updateSensorInfo(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semIsEnrollSession()Z
    .registers 1

    .line 1341
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public semNotifyTspBlockState(Z)V
    .registers 6

    const/4 v0, 0x0

    .line 1059
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 1060
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object v1

    .line 1061
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v1

    .line 1062
    instance-of v2, v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-eqz v2, :cond_2a

    .line 1063
    check-cast v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    const/4 v2, 0x6

    if-eqz p1, :cond_25

    const/16 v3, 0x3ec

    goto :goto_27

    :cond_25
    const/16 v3, 0x3ed

    .line 1064
    :goto_27
    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    return-void
.end method

.method public semOpenTzSession()V
    .registers 4

    .line 1260
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getFirstSensorId()I

    move-result v0

    .line 1261
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semProcessFidoCommand(II[B[B)I
    .registers 10

    .line 1216
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1217
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-nez p0, :cond_e

    const/4 p0, -0x1

    return p0

    .line 1218
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to use sensor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1224
    :cond_25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1226
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->cancelAuthenticationIfAuthClientExist()V

    .line 1228
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;I)V

    const/16 v2, 0x9

    .line 1231
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setCommand(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object v1

    .line 1232
    invoke-virtual {v1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setUserId(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p2

    const/4 v1, 0x0

    .line 1233
    invoke-virtual {p2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setParam(I)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p2

    .line 1234
    invoke-virtual {p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setInputBuffer([B)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p2

    .line 1235
    invoke-virtual {p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setOutputBuffer([B)Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p2

    .line 1236
    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->setUseScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;

    move-result-object p2

    .line 1237
    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient$Builder;->build()Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;

    move-result-object p2

    .line 1239
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;

    invoke-direct {p4, p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 p3, 0x3

    .line 1249
    :try_start_73
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_78} :catch_79

    goto :goto_83

    :catch_79
    move-exception p1

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p3, "Latch interrupted"

    invoke-static {p0, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    :goto_83
    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseRequestClient;->getRequestResult()I

    move-result p0

    return p0
.end method

.method public semRemoveEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V
    .registers 4

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    .line 1029
    :goto_3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1030
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->semRemoveEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_19
    return-void
.end method

.method public semRemoveHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V
    .registers 4

    .line 1049
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semRequest(II[B[B)I
    .registers 11

    .line 1112
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_USE_AOSP_HAL:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1115
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getFirstSensorId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result p0

    return p0
.end method

.method public semScheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZLandroid/os/Bundle;)J
    .registers 33

    move-object/from16 v7, p0

    .line 1302
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v16

    .line 1303
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    move-object/from16 v11, p8

    invoke-static {v0, v11}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semIsEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v3, 0x0

    .line 1304
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    move/from16 v8, p1

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getRecentGeneratedChallenge()J

    move-result-wide v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v4, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    goto :goto_35

    :cond_33
    move/from16 v8, p1

    .line 1306
    :goto_35
    iget-object v15, v7, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, v16

    move-object/from16 v6, p7

    move/from16 v7, p5

    move-wide/from16 v8, p3

    move/from16 v10, p9

    move-object/from16 v11, p8

    move/from16 v12, p6

    move/from16 v13, p10

    move-object/from16 v18, v14

    move/from16 v14, p11

    move-object/from16 v19, v15

    move-object/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZLandroid/os/Bundle;)V

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v16
.end method

.method public semScheduleSensorTest(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 6

    .line 1154
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;

    invoke-direct {p4, p0, p2, p5, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semScheduleUpdateTrustApp(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 6

    .line 1169
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semSetTpaHalEnabled(Z)V
    .registers 7

    .line 1351
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1354
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    const/4 p1, 0x0

    move v0, p1

    .line 1355
    :goto_9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_23

    .line 1356
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 1357
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 1358
    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setTestHalEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1360
    :cond_23
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    const-string v1, "biometric_tpa_mode"

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result p1

    .line 1362
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_43

    .line 1363
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    if-nez v0, :cond_40

    .line 1364
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 1365
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->start()V

    :cond_40
    or-int/lit8 p1, p1, 0x2

    goto :goto_4e

    .line 1369
    :cond_43
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    if-eqz v0, :cond_4c

    .line 1370
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->destroy()V

    .line 1371
    iput-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    :cond_4c
    and-int/lit8 p1, p1, -0x3

    .line 1375
    :goto_4e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getFirstSensorId()I

    move-result p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public semSetTpaRequestCommandAction([Ljava/lang/String;)V
    .registers 3

    .line 1390
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    if-eqz p0, :cond_b

    .line 1391
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->setTpaRequestCommandAction([Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public semUpdateTpaAction()V
    .registers 2

    .line 1382
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaHalModeEnabled:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTpaTestHal:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    if-eqz p0, :cond_b

    .line 1383
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->updateAction()V

    :cond_b
    return-void
.end method

.method public setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
    .registers 2

    .line 841
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 2

    .line 960
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    return-void
.end method

.method public setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 2

    .line 836
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-void
.end method

.method public startPreparedClient(II)V
    .registers 5

    .line 655
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateCacheForHAL(I)V
    .registers 2

    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->updateDaemonSdkVersion(I)V

    .line 1209
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->updateSensorInfo(I)Ljava/lang/String;

    .line 1210
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->updateSecurityLevel(I)V

    return-void
.end method

.method public final updateDaemonSdkVersion(I)V
    .registers 9

    const/16 v0, 0x100

    :try_start_2
    new-array v0, v0, [B

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v6, v0

    .line 1445
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result p1

    if-lez p1, :cond_3c

    .line 1449
    new-instance v1, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mDaemonSdkVersion:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    goto :goto_3c

    :catch_1e
    move-exception p1

    .line 1452
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDaemonSdkVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return-void
.end method

.method public updateSecurityLevel(I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1481
    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSecurityLevel:I

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    .line 1485
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSecurityLevel:I

    .line 1487
    :cond_12
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSecurityLevel:I

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->oemStrengthToPropertyStrength(I)I

    move-result v0

    .line 1488
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 1490
    iget v1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    if-eq v1, v0, :cond_65

    .line 1491
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor strength mismatch, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iput v0, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_47

    goto :goto_65

    :catch_47
    move-exception p1

    .line 1497
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSecurityLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    return-void
.end method

.method public final updateSensorInfo(I)Ljava/lang/String;
    .registers 11

    .line 1459
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    const/16 v2, 0x800

    :try_start_e
    new-array v2, v2, [B

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move-object v8, v2

    .line 1466
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    move-result p1

    if-lez p1, :cond_55

    .line 1469
    new-instance v3, Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_37

    :try_start_27
    const-string p1, "\n"

    const-string v1, ", "

    .line 1470
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->updateSensorInfo(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_34

    move-object v1, v3

    goto :goto_55

    :catch_34
    move-exception p1

    move-object v1, v3

    goto :goto_38

    :catch_37
    move-exception p1

    .line 1473
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-object v1
.end method
