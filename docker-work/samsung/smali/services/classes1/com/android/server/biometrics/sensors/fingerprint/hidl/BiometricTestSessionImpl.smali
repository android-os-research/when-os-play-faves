.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BiometricTestSessionImpl"


# instance fields
.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

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

.field public final mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

.field public final mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public final mSensorId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;)V
    .registers 8

    .line 126
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 69
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 127
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 128
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mSensorId:I

    .line 129
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 130
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    .line 131
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 132
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    .line 133
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 134
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .registers 10

    .line 168
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string p0, "BiometricTestSessionImpl"

    const-string p1, "No fingerprints, returning"

    .line 174
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const/4 v1, 0x0

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    .line 178
    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0x45

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    const-wide/16 v3, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    return-void
.end method

.method public cleanupInternalState(I)V
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public finishEnroll(I)V
    .registers 9

    .line 154
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    move v4, v0

    .line 157
    :goto_e
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v4

    goto :goto_e

    .line 161
    :cond_21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onEnrollResult(JIII)V

    return-void
.end method

.method public notifyAcquired(II)V
    .registers 5

    .line 191
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.TEST_BIOMETRIC"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onAcquired(JII)V

    return-void
.end method

.method public notifyError(II)V
    .registers 5

    .line 198
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.TEST_BIOMETRIC"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onError(JII)V

    return-void
.end method

.method public notifyVendorAcquired(II)V
    .registers 5

    .line 234
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.TEST_BIOMETRIC"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    const-wide/16 v0, 0x0

    const/4 p1, 0x6

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onAcquired(JII)V

    return-void
.end method

.method public notifyVendorError(II)V
    .registers 5

    .line 243
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.TEST_BIOMETRIC"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    const-wide/16 v0, 0x0

    const/16 p1, 0x8

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onError(JII)V

    return-void
.end method

.method public rejectAuthentication(I)V
    .registers 10

    .line 184
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->setTestHalEnabled(Z)V

    return-void
.end method

.method public startEnroll(I)V
    .registers 12

    .line 146
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x45

    new-array v5, v0, [B

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    move v6, p1

    .line 148
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J

    return-void
.end method
