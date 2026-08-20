.class public abstract Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "FaceEnrollClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/EnrollClient<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceEnrollClient"


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field public final mDisabledFeatures:[I

.field public final mEnrollIgnoreList:[I

.field public final mEnrollIgnoreListVendor:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/face/Face;",
            ">;[II",
            "Landroid/view/Surface;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move/from16 v9, p12

    move/from16 v10, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    .line 72
    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-wide/from16 v0, p8

    .line 74
    invoke-virtual {v14, v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    .line 75
    array-length v0, v15

    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mDisabledFeatures:[I

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700d4

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700d7

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    .line 82
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract daemonEnroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract daemonEnrollCancel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public hasReachedEnrollmentLimit()Z
    .registers 6

    .line 98
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x2

    .line 107
    :goto_8
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_37

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many faces registered, user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FaceEnrollClient"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public onAcquired(II)V
    .registers 4

    const/16 v0, 0x16

    if-ne p1, v0, :cond_b

    .line 120
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    goto :goto_11

    .line 122
    :cond_b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    :goto_11
    xor-int/lit8 v0, v0, 0x1

    .line 124
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    return-void
.end method

.method public onImageProcessed([BIIIILandroid/os/Bundle;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onImageProcessed([BIIIILandroid/os/Bundle;)V

    return-void
.end method

.method public startHalOperation()V
    .registers 8

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_18

    aget-byte v5, v1, v4

    .line 131
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 133
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mDisabledFeatures:[I

    array-length v4, v2

    move v5, v3

    :goto_21
    if-ge v5, v4, :cond_2f

    aget v6, v2, v5

    .line 135
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_2f
    const/4 v2, 0x2

    .line 142
    :try_start_30
    iget v4, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mTimeoutSec:I

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->daemonEnroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_51

    .line 146
    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 147
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_40} :catch_41

    goto :goto_51

    :catch_41
    move-exception v0

    const-string v1, "FaceEnrollClient"

    const-string v4, "Remote exception when requesting enroll"

    .line 150
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 152
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_51
    :goto_51
    return-void
.end method

.method public stopHalOperation()V
    .registers 4

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->daemonEnrollCancel()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_16

    :catch_4
    move-exception v0

    const-string v1, "FaceEnrollClient"

    const-string v2, "Remote exception when requesting cancel"

    .line 167
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 169
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_16
    return-void
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6

    .line 89
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
