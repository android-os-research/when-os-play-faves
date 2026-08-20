.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "FaceEnrollClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/EnrollClient<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceEnrollClient"


# instance fields
.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public final mDebugConsent:Z

.field public final mDisabledFeatures:[I

.field public final mEnrollIgnoreList:[I

.field public final mEnrollIgnoreListVendor:[I

.field public mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

.field public final mMaxTemplatesPerUser:I

.field public mOsPreviewHandle:Landroid/os/NativeHandle;

.field public final mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public final mPreviewSurface:Landroid/view/Surface;

.field public final mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# direct methods
.method public static bridge synthetic -$$Nest$mreleaseSurfaceHandlesIfNeeded(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->releaseSurfaceHandlesIfNeeded()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
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
            "IZ)V"
        }
    .end annotation

    move-object v14, p0

    const/4 v11, 0x0

    move-object v0, p0

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

    .line 95
    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 75
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 295
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-wide/from16 v0, p8

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700d4

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    .line 100
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700d7

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    move/from16 v0, p17

    .line 102
    iput v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mMaxTemplatesPerUser:I

    move/from16 v0, p18

    .line 103
    iput-boolean v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDebugConsent:Z

    move-object/from16 v0, p11

    .line 104
    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDisabledFeatures:[I

    move-object/from16 v0, p13

    .line 105
    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final doEnroll([B)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 213
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    .line 214
    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v3

    .line 216
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 217
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 218
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v7

    move-object v5, p1

    .line 217
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/face/ISession;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0

    .line 220
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    invoke-interface {v0, v3, v1, p1, p0}, Landroid/hardware/biometrics/face/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public hasReachedEnrollmentLimit()Z
    .registers 4

    .line 124
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mMaxTemplatesPerUser:I

    if-lt v0, p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public final obtainSurfaceHandlesIfNeeded()V
    .registers 4

    const-string v0, "FaceEnrollClient"

    .line 243
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_21

    .line 248
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->acquireSurfaceHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 253
    :try_start_c
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlNativeHandleUtils;->dup(Landroid/os/NativeHandle;)Landroid/hardware/common/NativeHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    const-string v1, "Obtained handles for the preview surface."

    .line 254
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_21

    :catch_18
    move-exception v1

    const/4 v2, 0x0

    .line 256
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    const-string p0, "Failed to dup mOsPreviewHandle"

    .line 257
    invoke-static {v0, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void
.end method

.method public onAcquired(II)V
    .registers 4

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->shouldSendAcquiredMessage(II)Z

    move-result v0

    .line 137
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 5

    .line 147
    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    .line 148
    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->shouldSendAcquiredMessage(II)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 152
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 154
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_35

    :catch_28
    move-exception p1

    const-string v0, "FaceEnrollClient"

    const-string v1, "Failed to send enrollment frame"

    .line 156
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_35
    :goto_35
    return-void
.end method

.method public final releaseSurfaceHandlesIfNeeded()V
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    const-string v1, "FaceEnrollClient"

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    if-nez v0, :cond_10

    const-string/jumbo v0, "mHwPreviewHandle is null even though mPreviewSurface is not null."

    .line 264
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    :try_start_15
    const-string v0, "Closing mHwPreviewHandle"

    .line 268
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlNativeHandleUtils;->close(Landroid/hardware/common/NativeHandle;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    move-exception v0

    const-string v3, "Failed to close mPreviewSurface"

    .line 271
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :goto_26
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 275
    :cond_28
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    if-eqz v0, :cond_38

    const-string v0, "Releasing mOsPreviewHandle"

    .line 276
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->releaseSurfaceHandle(Landroid/os/NativeHandle;)V

    .line 278
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 280
    :cond_38
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_46

    const-string v0, "Releasing mPreviewSurface"

    .line 281
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_46
    return-void
.end method

.method public final shouldSendAcquiredMessage(II)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x16

    if-ne p1, v2, :cond_f

    .line 130
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_19

    .line 131
    :cond_f
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 110
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/EnrollClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelReEnrollNotification(Landroid/content/Context;)V

    return-void
.end method

.method public startHalOperation()V
    .registers 11

    const-string v0, "FaceEnrollClient"

    .line 164
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->obtainSurfaceHandlesIfNeeded()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 166
    :try_start_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDebugConsent:Z

    if-eqz v4, :cond_17

    .line 168
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_17
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDisabledFeatures:[I

    array-length v5, v4

    const/4 v6, 0x1

    move v7, v2

    move v8, v6

    :goto_1d
    if-ge v7, v5, :cond_2b

    aget v9, v4, v7

    .line 173
    invoke-static {v9}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertFrameworkToAidlFeature(I)B

    move-result v9

    if-ne v9, v6, :cond_28

    move v8, v2

    :cond_28
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_2b
    if-eqz v8, :cond_34

    .line 180
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_34
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [B

    move v5, v2

    .line 184
    :goto_3b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_50

    .line 185
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 191
    :cond_50
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v3

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    invoke-virtual {v3, v6}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->startOperation(I)V

    const-string v3, "enroll START"

    .line 193
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 195
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 196
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    .line 197
    invoke-static {v7}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 196
    invoke-virtual {v3, v7, v2, v4, v8}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonEnroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    goto :goto_86

    .line 200
    :cond_80
    invoke-virtual {p0, v4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->doEnroll([B)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 202
    :goto_86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_aa} :catch_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_aa} :catch_ab

    goto :goto_b9

    :catch_ab
    move-exception v3

    const-string v4, "Exception when requesting enroll"

    .line 205
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 207
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_b9
    return-void
.end method

.method public stopHalOperation()V
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 230
    :try_start_5
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_20

    :catch_f
    move-exception v1

    const-string v2, "FaceEnrollClient"

    const-string v3, "Remote exception when requesting cancel"

    .line 235
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    .line 236
    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 237
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_20
    :goto_20
    return-void
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6

    .line 118
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mSemCancelDaemonCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 119
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 p0, 0x3

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
