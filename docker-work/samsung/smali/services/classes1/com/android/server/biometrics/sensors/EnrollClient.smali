.class public abstract Lcom/android/server/biometrics/sensors/EnrollClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "EnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnrollmentModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/EnrollmentModifier;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Biometrics/EnrollClient"


# instance fields
.field public final mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

.field public mEnrollmentStartTimeMs:J

.field public final mHardwareAuthToken:[B

.field public final mHasEnrollmentsBeforeStarting:Z

.field public mPrevRemaining:I

.field public final mTimeoutSec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 28
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
            "Lcom/android/server/biometrics/sensors/BiometricUtils;",
            "IIZ",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v8, p10

    move/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    .line 65
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-object/from16 v0, p8

    .line 67
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 68
    array-length v0, v13

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    move/from16 v0, p9

    .line 69
    iput v0, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mTimeoutSec:I

    .line 70
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasEnrollments()Z

    move-result v0

    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/EnrollClient;->mHasEnrollmentsBeforeStarting:Z

    return-void
.end method


# virtual methods
.method public getOverlayReasonFromEnrollReason(I)I
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_7

    const/4 p0, 0x2

    if-eq p1, p0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return p0
.end method

.method public getProtoEnum()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public hasEnrollmentStateChanged()Z
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasEnrollments()Z

    move-result v0

    .line 76
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHasEnrollmentsBeforeStarting:Z

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public hasEnrollments()Z
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract hasReachedEnrollmentLimit()Z
.end method

.method public interruptsPrecedingClients()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 7

    .line 85
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    if-eqz v0, :cond_d

    .line 88
    iget v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mPrevRemaining:I

    if-ge p2, v0, :cond_b

    .line 89
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->vibrateSuccess()V

    .line 91
    :cond_b
    iput p2, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mPrevRemaining:I

    .line 95
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 98
    :try_start_13
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v1, "Biometrics/EnrollClient"

    const-string v2, "Remote exception"

    .line 101
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    if-nez p2, :cond_49

    .line 105
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-interface {p2, v0, v1, p1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p2

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v0, v2

    const/4 v2, 0x1

    .line 106
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnEnrolled(IJZ)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->updateEnrollTimeStampIfNeeded()V

    .line 112
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 114
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->notifyUserActivity()V

    return-void
.end method

.method public onError(II)V
    .registers 9

    .line 140
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    .line 140
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnEnrolled(IJZ)V

    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4

    .line 119
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/EnrollClient;->hasReachedEnrollmentLimit()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "Biometrics/EnrollClient"

    const-string v1, "Reached enrollment limit"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 123
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    .line 127
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mEnrollmentStartTimeMs:J

    .line 128
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    const/16 p1, 0x64

    .line 130
    iput p1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mPrevRemaining:I

    return-void
.end method

.method public updateEnrollTimeStampIfNeeded()V
    .registers 9

    .line 176
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isAutoTime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "Biometrics/EnrollClient"

    const-string/jumbo v1, "onEnrollResult: set timestamp"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v7

    const-string v3, "biometrics_strong_enroll_timestamp"

    .line 178
    invoke-static/range {v2 .. v7}, Lcom/android/server/biometrics/Utils;->putLongDb(Landroid/content/Context;Ljava/lang/String;ZJI)V

    :cond_2e
    return-void
.end method
