.class public Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BiometricTestSessionImpl"


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

.field public final mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field public final mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field public final mSensorId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)V
    .registers 7

    .line 138
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 59
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 139
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 140
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    .line 141
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 142
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 143
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    .line 144
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 145
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .registers 10

    .line 180
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string p0, "BiometricTestSessionImpl"

    const-string p1, "No faces, returning"

    .line 186
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const/4 v1, 0x0

    .line 189
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v5

    .line 190
    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0x45

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 191
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    return-void
.end method

.method public cleanupInternalState(I)V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public finishEnroll(I)V
    .registers 9

    .line 166
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    move v4, v0

    :goto_e
    const/4 v0, 0x1

    if-lt v4, v0, :cond_31

    .line 169
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_31

    .line 173
    :cond_1e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onEnrollResult(JIII)V

    return-void

    .line 170
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v4

    goto :goto_e
.end method

.method public notifyAcquired(II)V
    .registers 11

    .line 203
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAcquired(JIII)V

    return-void
.end method

.method public notifyError(II)V
    .registers 11

    .line 210
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onError(JIII)V

    return-void
.end method

.method public notifyVendorAcquired(II)V
    .registers 11

    .line 246
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/16 v6, 0x16

    move v5, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAcquired(JIII)V

    return-void
.end method

.method public notifyVendorError(II)V
    .registers 11

    .line 255
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/16 v6, 0x8

    move v5, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onError(JIII)V

    return-void
.end method

.method public rejectAuthentication(I)V
    .registers 10

    .line 196
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->setTestHalEnabled(Z)V

    return-void
.end method

.method public startEnroll(I)V
    .registers 14

    .line 157
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x45

    new-array v5, v0, [B

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 p0, 0x0

    new-array v9, p0, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, p1

    .line 159
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    return-void
.end method
