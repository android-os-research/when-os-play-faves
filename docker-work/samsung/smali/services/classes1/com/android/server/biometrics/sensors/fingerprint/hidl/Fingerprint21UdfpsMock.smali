.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
.super Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
.source "Fingerprint21UdfpsMock.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;
    }
.end annotation


# static fields
.field public static final CONFIG_AUTH_DELAY_PT1:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt1"

.field public static final CONFIG_AUTH_DELAY_PT2:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt2"

.field public static final CONFIG_AUTH_DELAY_RANDOMNESS:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_randomness"

.field public static final CONFIG_ENABLE_TEST_UDFPS:Ljava/lang/String; = "com.android.server.biometrics.sensors.fingerprint.test_udfps.enable"

.field public static final DEFAULT_AUTH_DELAY_PT1_MS:I = 0x12c

.field public static final DEFAULT_AUTH_DELAY_PT2_MS:I = 0x190

.field public static final DEFAULT_AUTH_DELAY_RANDOMNESS_MS:I = 0x64

.field public static final TAG:Ljava/lang/String; = "Fingerprint21UdfpsMock"


# instance fields
.field public final mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

.field public final mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

.field public final mHandler:Landroid/os/Handler;

.field public final mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

.field public final mRandom:Ljava/util/Random;

.field public final mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

.field public final mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public final mUserHasTrust:Landroid/util/SparseBooleanArray;


# direct methods
.method public static synthetic $r8$lambda$2WJRIJA0k6DIBNSLGgn06AxYTYU(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->lambda$onPointerUp$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ha1BQktJhBzEgrthW2Q_lU2a1fU(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->lambda$onPointerDown$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmMockHalResultController(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetDebugMessage(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->setDebugMessage(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 24

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    .line 392
    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 394
    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    .line 395
    invoke-virtual {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->init(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    move-object/from16 v4, p5

    .line 396
    iput-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    .line 399
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e009c

    .line 400
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 401
    new-instance v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v7, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v8, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    iget-object v10, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->componentInfo:Ljava/util/List;

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getAllLocations()Ljava/util/List;

    move-result-object v14

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    iput-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 405
    iput-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    .line 406
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 407
    const-class v1, Landroid/app/trust/TrustManager;

    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/TrustManager;

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 408
    invoke-virtual {v1, p0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 409
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mRandom:Ljava/util/Random;

    .line 410
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable-IA;)V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    .line 411
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-direct {v1, p0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable-IA;)V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    .line 412
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;)V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mRestartAuthRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;

    .line 416
    invoke-virtual {v3, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->init(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$RestartAuthRunnable;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    return-void
.end method

.method private synthetic lambda$onPointerDown$0()V
    .registers 9

    const-string v0, "Fingerprint21UdfpsMock"

    const-string/jumbo v1, "onFingerDown"

    .line 447
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    .line 449
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->getLastAuthenticatedClient()Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mScheduler:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    if-nez v2, :cond_1c

    const-string p0, "Not authenticating"

    .line 453
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 457
    :cond_1c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 458
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_32

    if-ne v1, v2, :cond_32

    move v1, v0

    goto :goto_33

    :cond_32
    move v1, v3

    .line 466
    :goto_33
    instance-of v4, v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    if-eqz v4, :cond_4f

    .line 467
    move-object v4, v2

    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    .line 468
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 469
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v3

    :goto_4e
    move v3, v0

    .line 474
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->getNewCaptureDuration()I

    move-result v0

    .line 475
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->getMatchingDuration()I

    move-result v4

    add-int v5, v0, v4

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->setDebugMessage(Ljava/lang/String;)V

    if-nez v1, :cond_9d

    if-eqz v3, :cond_87

    goto :goto_9d

    .line 482
    :cond_87
    instance-of v1, v2, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-eqz v1, :cond_ae

    .line 485
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;->setSimulationTime(JI)V

    .line 486
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    int-to-long v1, v5

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_ae

    .line 480
    :cond_9d
    :goto_9d
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;->setSimulationTime(JI)V

    .line 481
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    int-to-long v1, v5

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_ae
    :goto_ae
    return-void
.end method

.method private synthetic lambda$onPointerUp$1()V
    .registers 7

    const-string v0, "Fingerprint21UdfpsMock"

    const-string/jumbo v1, "onFingerUp"

    .line 494
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    .line 500
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;->isImageCaptureComplete()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 501
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeRejectRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onAcquired(JII)V

    goto :goto_49

    .line 505
    :cond_2b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    .line 506
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;->isImageCaptureComplete()Z

    move-result v0

    if-nez v0, :cond_49

    .line 507
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mFakeAcceptRunnable:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeAcceptRunnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mMockHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onAcquired(JII)V

    :cond_49
    :goto_49
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
    .registers 17

    const-string v0, "Fingerprint21UdfpsMock"

    const-string v1, "Creating Fingerprint23Mock!"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 256
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;

    move-object v1, p4

    invoke-direct {v6, v0, v7, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;-><init>(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    .line 258
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    move-object v0, p2

    iget v1, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v3, p0

    invoke-direct {v9, v1, p0, v7, v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    .line 260
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-object v1
.end method


# virtual methods
.method public final getMatchingDuration()I
    .registers 4

    .line 532
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt2"

    const/16 v1, 0x190

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x0

    .line 538
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getNewCaptureDuration()I
    .registers 6

    .line 516
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_pt1"

    const/16 v2, 0x12c

    const/4 v3, -0x2

    .line 517
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v2, "com.android.server.biometrics.sensors.fingerprint.test_udfps.auth_delay_randomness"

    const/16 v4, 0x64

    .line 521
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 525
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mRandom:Ljava/util/Random;

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    sub-int/2addr p0, v0

    add-int/2addr v1, p0

    const/4 p0, 0x0

    .line 528
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
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

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onPointerDown(JIIIFF)V
    .registers 8

    .line 446
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPointerUp(JI)V
    .registers 4

    .line 493
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTrustChanged(ZIILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 422
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public onTrustError(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .registers 3

    return-void
.end method

.method public final setDebugMessage(Ljava/lang/String;)V
    .registers 6

    const-string v0, "Fingerprint21UdfpsMock"

    .line 543
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getUdfpsOverlayController()Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDebugMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-interface {v1, p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->setDebugMessage(ILjava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_3a

    :catch_25
    move-exception p0

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception when sending message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    :goto_3a
    return-void
.end method
