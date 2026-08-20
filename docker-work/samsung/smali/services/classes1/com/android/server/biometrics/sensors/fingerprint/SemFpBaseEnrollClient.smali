.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "SemFpBaseEnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/EnrollClient<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field public mDuplicatedImgCnt:I

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;

.field public mLastErrorCode:I

.field public mTotalQualityErrorCount:I

.field public mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;IIZ",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    .line 80
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;

    invoke-direct {v14}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;-><init>()V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;IIZ",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct/range {p0 .. p13}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 95
    iput-object p14, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;

    return-void
.end method


# virtual methods
.method public final deliverEventToUdfpsSysUiIfNeeded(II)V
    .registers 4

    .line 160
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_f

    const/16 v0, 0x2713

    if-ne p2, v0, :cond_f

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnAcquired(II)V

    :cond_f
    return-void
.end method

.method public destroy()V
    .registers 8

    .line 244
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->destroy()V

    .line 245
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_a

    .line 246
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->destroy()V

    .line 248
    :cond_a
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mTotalQualityErrorCount:I

    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mLastErrorCode:I

    const-string v3, "U"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;->stopLogging(ILjava/lang/String;III)V

    return-void
.end method

.method public getLastErrorCode()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 254
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mLastErrorCode:I

    return p0
.end method

.method public hasReachedEnrollmentLimit()Z
    .registers 4

    .line 135
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 137
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semGetMaxTemplateNumber()I

    move-result v1

    if-lt v0, v1, :cond_3a

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many fingerprints registered, user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method public initForUdfps()V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;->createUdfpsSysUiImpl(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    const/16 v1, 0x40

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setSysUiType(I)V

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->setSysUiListener(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;)V

    return-void
.end method

.method public onAcquired(II)V
    .registers 4

    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 147
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_a

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->deliverEventToUdfpsSysUiIfNeeded(II)V

    :cond_a
    const/4 v0, 0x6

    if-ne p1, v0, :cond_17

    const/16 v0, 0x3ea

    if-ne p2, v0, :cond_17

    .line 152
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mDuplicatedImgCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mDuplicatedImgCnt:I

    .line 154
    :cond_17
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsQualityFailedEvent(II)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 155
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mTotalQualityErrorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mTotalQualityErrorCount:I

    :cond_23
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 11

    if-nez p2, :cond_2b

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_9

    .line 186
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->stop()V

    .line 188
    :cond_9
    move-object v0, p1

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mDuplicatedImgCnt:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/Fingerprint;->semSetDuplicatedImgCount(I)V

    .line 189
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;->sendBigDataForEnrollSuccess(I)V

    .line 190
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v0

    long-to-int v3, v0

    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mDuplicatedImgCnt:I

    iget v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mTotalQualityErrorCount:I

    const/4 v7, 0x0

    const-string v4, "S"

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;->stopLogging(ILjava/lang/String;III)V

    .line 193
    :cond_2b
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public onError(II)V
    .registers 4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    .line 172
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mLastErrorCode:I

    goto :goto_9

    .line 174
    :cond_7
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mLastErrorCode:I

    .line 176
    :goto_9
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 177
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz p0, :cond_13

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnError(II)V

    :cond_13
    return-void
.end method

.method public onOneHandModeEnabled()V
    .registers 3

    const/16 v0, 0x8

    const/16 v1, 0x1389

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->onError(II)V

    .line 122
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    return-void
.end method

.method public onWirelessPowerEnabled()V
    .registers 3

    const/16 v0, 0x8

    const/16 v1, 0x138c

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->onError(II)V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnPause()V

    .line 232
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->sendPauseCommand()V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_7

    .line 237
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->handleOnResume()V

    .line 239
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->sendResumeCommand()V

    return-void
.end method

.method public abstract sendPauseCommand()V
.end method

.method public abstract sendResumeCommand()V
.end method

.method public abstract setEnrollType()V
.end method

.method public startHalOperation()V
    .registers 4

    .line 198
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->setEnrollType()V

    .line 199
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_e

    .line 200
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz v0, :cond_e

    .line 201
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->start()V

    .line 204
    :cond_e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$Injector;->startLogging(ILjava/lang/String;)V

    return-void
.end method

.method public stopHalOperation()V
    .registers 2

    .line 209
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_b

    .line 210
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->mUdfpsImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    if-eqz p0, :cond_b

    .line 211
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;->stop()V

    :cond_b
    return-void
.end method

.method public vibrateError()V
    .registers 2

    .line 225
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    return-void
.end method

.method public vibrateSuccess()V
    .registers 2

    .line 219
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    return-void
.end method
