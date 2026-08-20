.class public Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "face/aidl/BiometricTestSessionImpl"


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field public final mContext:Landroid/content/Context;

.field public final mEnrollmentIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field public final mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field public final mSensorId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V
    .registers 7

    .line 150
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 71
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 151
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 152
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 153
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 154
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 155
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 156
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 157
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string p0, "face/aidl/BiometricTestSessionImpl"

    const-string p1, "No faces, returning"

    .line 207
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const/4 v1, 0x0

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v0

    .line 211
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object p0

    const/16 p1, 0x45

    new-array p1, p1, [B

    .line 212
    invoke-static {p1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p1

    .line 211
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void
.end method

.method public cleanupInternalState(I)V
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupInternalState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face/aidl/BiometricTestSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public finishEnroll(I)V
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 190
    :goto_d
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 191
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_d

    .line 194
    :cond_20
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object p0

    const/4 p1, 0x0

    .line 196
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onEnrollmentProgress(II)V

    return-void
.end method

.method public notifyAcquired(II)V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    new-instance v0, Landroid/hardware/biometrics/face/BaseFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    int-to-byte p2, p2

    .line 228
    iput-byte p2, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 230
    new-instance p2, Landroid/hardware/biometrics/face/AuthenticationFrame;

    invoke-direct {p2}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    .line 231
    iput-object v0, p2, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 235
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    return-void
.end method

.method public notifyError(II)V
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object p0

    int-to-byte p1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onError(BI)V

    return-void
.end method

.method public notifyVendorAcquired(II)V
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    new-instance v0, Landroid/hardware/biometrics/face/BaseFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    const/16 v1, 0x17

    .line 284
    iput-byte v1, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 285
    iput p2, v0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    .line 287
    new-instance p2, Landroid/hardware/biometrics/face/AuthenticationFrame;

    invoke-direct {p2}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    .line 288
    iput-object v0, p2, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 292
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    return-void
.end method

.method public notifyVendorError(II)V
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object p0

    const/4 p1, 0x7

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onError(BI)V

    return-void
.end method

.method public rejectAuthentication(I)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    .line 166
    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    const-string v1, "face/aidl/BiometricTestSessionImpl"

    const-string v2, "exception"

    .line 168
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :goto_15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->setTestHalEnabled(Z)V

    .line 173
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setTestHalEnabled(Z)V

    return-void
.end method

.method public startEnroll(I)V
    .registers 14

    .line 178
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x45

    new-array v5, v0, [B

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 p0, 0x0

    new-array v9, p0, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, p1

    .line 180
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    return-void
.end method
