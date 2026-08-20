.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceSetFeatureClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceSetFeatureClient"


# instance fields
.field public final mEnabled:Z

.field public final mFaceId:I

.field public final mFeature:I

.field public final mHardwareAuthToken:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[BI)V
    .registers 27
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
            "IZ[BI)V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p12

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 59
    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move/from16 v0, p10

    .line 61
    iput v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    move/from16 v0, p11

    .line 62
    iput-boolean v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mEnabled:Z

    move/from16 v0, p13

    .line 63
    iput v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFaceId:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    .line 66
    array-length v0, v12

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v0, :cond_3d

    aget-byte v2, v12, v1

    .line 67
    iget-object v3, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_3d
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .registers 10

    const-string v0, "FaceSetFeatureClient"

    const/4 v1, 0x0

    .line 93
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    iget-boolean v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mEnabled:Z

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFaceId:I

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    move-result v4

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFeature FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v4, :cond_45

    move v4, v3

    goto :goto_46

    :cond_45
    move v4, v1

    :goto_46
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V

    .line 102
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v2, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_50} :catch_51

    goto :goto_77

    :catch_51
    move-exception v2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to set feature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_77
    return-void
.end method

.method public unableToStart()V
    .registers 3

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception p0

    const-string v0, "FaceSetFeatureClient"

    const-string v1, "Unable to send error"

    .line 76
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method
