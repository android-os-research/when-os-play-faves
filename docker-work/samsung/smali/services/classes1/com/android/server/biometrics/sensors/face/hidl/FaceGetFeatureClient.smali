.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceGetFeatureClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceGetFeatureClient"


# instance fields
.field public final mFaceId:I

.field public final mFeature:I

.field public mValue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;II)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "II)V"
        }
    .end annotation

    move-object v11, p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 58
    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move/from16 v0, p10

    .line 60
    iput v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    move/from16 v0, p11

    .line 61
    iput v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFaceId:I

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 1

    const/16 p0, 0x9

    return p0
.end method

.method public getValue()Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mValue:Z

    return p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .registers 9

    const-string v0, "FaceGetFeatureClient"

    const/4 v1, 0x0

    .line 86
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 87
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFaceId:I

    invoke-interface {v4, v5, v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object v4

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeature FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v5, v2, [Z

    .line 94
    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    aput v6, v3, v1

    .line 95
    iget-boolean v6, v4, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    aput-boolean v6, v5, v1

    .line 96
    iput-boolean v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mValue:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v6

    if-eqz v6, :cond_5a

    .line 99
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v6

    iget v4, v4, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    if-nez v4, :cond_56

    move v4, v2

    goto :goto_57

    :cond_56
    move v4, v1

    :goto_57
    invoke-virtual {v6, v4, v3, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureGet(Z[I[Z)V

    .line 101
    :cond_5a
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v3, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5f} :catch_60

    goto :goto_6b

    :catch_60
    move-exception v2

    const-string v3, "Unable to getFeature"

    .line 103
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_6b
    return-void
.end method

.method public unableToStart()V
    .registers 4

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 68
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureGet(Z[I[Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception p0

    const-string v0, "FaceGetFeatureClient"

    const-string v1, "Unable to send error"

    .line 71
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    :goto_1b
    return-void
.end method
