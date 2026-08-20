.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;
.super Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;
.source "Sensor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HalSessionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;
    }
.end annotation


# instance fields
.field public final mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

.field public final mSensorId:I

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$0nHDUZnfUmlfdItr3RAJUxrYu6I(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onError$3(BI)V

    return-void
.end method

.method public static synthetic $r8$lambda$4hqDIcglBYd7zE8AGjgfNnWIcXo(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onLockoutPermanent$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$ABvADn068VG3MLgto8VgMvCNjWI(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onAuthenticationSucceeded$5(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HYKpcSdr7z-ctWqXFIQsJeLbHks(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onEnrollmentProgress$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kg3rzXrO0bp5rH3b6H2pOWUH42A(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onInteractionDetected$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$T9kcjWsBw4HQI7X_c5pl33I3Idw(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onAuthenticationFailed$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$TSepqNenVrn68YRL4SZC9xJoVGo(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;BI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onAcquired$2(BI)V

    return-void
.end method

.method public static synthetic $r8$lambda$TyPPz2yOynuLTes7zNsprMnNgiY(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onEnrollmentsRemoved$12([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y8C6h3ikQPBiWkCs4PTuEo64fkA(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onChallengeRevoked$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$YM6YaLrfUaAclzij2japA1yJQqE(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onLockoutTimed$7(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$_zrsu75RuHR__af5Kk2jDzMWzoE(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onLockoutCleared$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$cAnnyeU5wDdvUaPBg-9f_7UWF-8(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onChallengeGenerated$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hZP6bhZsvtYq2s4qHhnv9ao4csI(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onAuthenticatorIdInvalidated$14(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$oi8yzwB4YKvk9iYCOLg7PQiI5ig(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onAuthenticatorIdRetrieved$13(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$sbjaJ5LFr6kjrgWviF2D1lldH_Q(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->lambda$onEnrollmentsEnumerated$11([I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;)V
    .registers 10

    .line 169
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    .line 172
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    .line 174
    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    .line 175
    iput p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    .line 176
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 177
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 178
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    return-void
.end method

.method private synthetic lambda$onAcquired$2(BI)V
    .registers 5

    .line 237
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result p1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleAcquired: acquiredInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsInternalClientFreeEvent(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 244
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->handleInternalClientFreeEvent(I)V

    return-void

    .line 247
    :cond_2d
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsRequestCommandEvent(II)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 248
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->handleRequestEvent(I)V

    return-void

    .line 252
    :cond_37
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_46

    .line 253
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsSkipEvent(II)Z

    move-result v0

    if-eqz v0, :cond_42

    return-void

    .line 256
    :cond_42
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semUpdateVendorInfo(II)I

    move-result p2

    .line 259
    :cond_46
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 260
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v1, :cond_6c

    .line 261
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAcquired for non-acquisition client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 266
    :cond_6c
    check-cast v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 267
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 270
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onSemAcquire(III)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationFailed$6()V
    .registers 7

    .line 399
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 400
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_26

    .line 401
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationFailed for non-authentication consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "handleAuthenticated: false"

    .line 406
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 411
    new-instance v1, Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v2, v2

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    const/4 v2, 0x0

    .line 413
    invoke-interface {v0, v1, v5, v2}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 416
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {p0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onSemAuthenticated(Z)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationSucceeded$5(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 8

    .line 367
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 368
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_26

    .line 369
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticationSucceeded for non-authentication consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "handleAuthenticated: true"

    .line 375
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    .line 377
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getFingerprintName(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 380
    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 382
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v3, v3

    invoke-direct {v2, v1, p1, v3, v4}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 383
    invoke-static {p2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object p1

    .line 384
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 385
    array-length v1, p1

    const/4 v3, 0x0

    :goto_51
    if-ge v3, v1, :cond_5f

    aget-byte v4, p1, v3

    .line 386
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_5f
    const/4 p1, 0x1

    .line 389
    invoke-interface {v0, v2, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 391
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onSemAuthenticated(Z)V

    return-void
.end method

.method private synthetic lambda$onAuthenticatorIdInvalidated$14(J)V
    .registers 5

    .line 548
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 549
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    if-nez v1, :cond_26

    .line 550
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticatorIdInvalidated for wrong consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 555
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    .line 557
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/InvalidationClient;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method private synthetic lambda$onAuthenticatorIdRetrieved$13(J)V
    .registers 5

    .line 532
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 533
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    if-nez v1, :cond_26

    .line 534
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticatorIdRetrieved for wrong consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 534
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 539
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    .line 541
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method private synthetic lambda$onChallengeGenerated$0(J)V
    .registers 6

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "handleChallengeGenerated: onChallengeGenerated"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 198
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    if-nez v1, :cond_2e

    .line 199
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onChallengeGenerated for wrong client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 204
    :cond_2e
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    .line 206
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;->onChallengeGenerated(IIJ)V

    .line 209
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onSemChallengeGenerated(J)V

    return-void
.end method

.method private synthetic lambda$onChallengeRevoked$1(J)V
    .registers 5

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "handleChallengeRevoked: onChallengeRevoked"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 221
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    if-nez v1, :cond_2e

    .line 222
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onChallengeRevoked for wrong client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_2e
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    .line 229
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;->onChallengeRevoked(IIJ)V

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$4(II)V
    .registers 8

    .line 327
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 328
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;

    if-nez v1, :cond_26

    .line 329
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnrollmentProgress for non-enroll client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 334
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 335
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {v2, v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 337
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v3, v3

    invoke-direct {v2, v1, p1, v3, v4}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 339
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;

    .line 340
    invoke-virtual {v0, v2, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    if-nez p2, :cond_4a

    .line 344
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onSemEnrolled()V

    :cond_4a
    return-void
.end method

.method private synthetic lambda$onEnrollmentsEnumerated$11([I)V
    .registers 9

    .line 487
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 488
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez v1, :cond_26

    .line 489
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnrollmentsEnumerated for non-enumerate consumer: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 494
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 496
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_45

    .line 497
    :goto_2c
    array-length v1, p1

    if-ge v2, v1, :cond_49

    .line 498
    new-instance v1, Landroid/hardware/fingerprint/Fingerprint;

    aget v3, p1, v2

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 499
    array-length v3, p1

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v1, v3}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_45
    const/4 p0, 0x0

    .line 502
    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :cond_49
    return-void
.end method

.method private synthetic lambda$onEnrollmentsRemoved$12([I)V
    .registers 9

    .line 510
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 511
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    if-nez v1, :cond_26

    .line 512
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRemoved for non-removal consumer: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 512
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 517
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 518
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_45

    .line 519
    :goto_2c
    array-length v1, p1

    if-ge v2, v1, :cond_49

    .line 520
    new-instance v1, Landroid/hardware/fingerprint/Fingerprint;

    aget v3, p1, v2

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 521
    array-length v3, p1

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v1, v3}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_45
    const/4 p0, 0x0

    .line 524
    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :cond_49
    return-void
.end method

.method private synthetic lambda$onError$3(BI)V
    .registers 7

    .line 297
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError, client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vendorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_51

    .line 303
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onError for non-error consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 309
    :cond_51
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toFrameworkError(B)I

    move-result v1

    .line 312
    move-object v2, v0

    check-cast v2, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 313
    invoke-interface {v2, v1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_63

    .line 316
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onHardwareUnavailable()V

    .line 319
    :cond_63
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    invoke-interface {p0, p1, v1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onSemError(III)V

    return-void
.end method

.method private synthetic lambda$onInteractionDetected$10()V
    .registers 4

    .line 471
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 472
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    if-nez v1, :cond_26

    .line 473
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInteractionDetected for non-detect client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 478
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    .line 480
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->onInteractionDetected()V

    return-void
.end method

.method private synthetic lambda$onLockoutCleared$9()V
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 455
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    if-nez v1, :cond_1e

    .line 456
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onLockoutCleared outside of resetLockout by HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    goto :goto_2b

    .line 460
    :cond_1e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onLockoutCleared after resetLockout"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    .line 463
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->onLockoutCleared()V

    :goto_2b
    return-void
.end method

.method private synthetic lambda$onLockoutPermanent$8()V
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 440
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    if-nez v1, :cond_26

    .line 441
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLockoutPermanent for non-lockout consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 446
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 447
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutPermanent()V

    return-void
.end method

.method private synthetic lambda$onLockoutTimed$7(J)V
    .registers 5

    .line 424
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 425
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    if-nez v1, :cond_26

    .line 426
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onLockoutTimed for non-lockout consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 432
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutTimed(J)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "c2f3b863b6dff925bc4451473ee6caa1aa304b8f"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public final handleInternalClientFreeEvent(I)V
    .registers 3

    const/16 v0, 0x4e21

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x4e22

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x7531

    if-eq p1, v0, :cond_11

    const/16 v0, 0x7532

    if-eq p1, v0, :cond_11

    goto :goto_24

    .line 280
    :cond_11
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

    if-eqz v0, :cond_24

    .line 281
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onSemSpenEvent(I)V

    goto :goto_24

    .line 287
    :cond_1b
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_24

    .line 288
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onSemGestureEvent(I)V

    :cond_24
    :goto_24
    return-void
.end method

.method public final handleRequestEvent(I)V
    .registers 4

    .line 568
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 569
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;

    if-nez v1, :cond_25

    .line 570
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorTestEvent for non-request client: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 570
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 574
    :cond_25
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;

    .line 576
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;->onRequestResult(I)V

    return-void
.end method

.method public onAcquired(BI)V
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 7

    .line 354
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1c

    .line 355
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 356
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;

    if-eqz v1, :cond_1c

    .line 357
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient;

    .line 358
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->useEarlyAuthenticationResult()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 359
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleEarlyAuthenticationResult()V

    const-wide/16 v0, 0xa

    goto :goto_1e

    :cond_1c
    const-wide/16 v0, 0x0

    .line 366
    :goto_1e
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;ILandroid/hardware/keymaster/HardwareAuthToken;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAuthenticatorIdInvalidated(J)V
    .registers 5

    .line 547
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticatorIdRetrieved(J)V
    .registers 5

    .line 531
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChallengeGenerated(J)V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChallengeRevoked(J)V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentProgress(II)V
    .registers 5

    .line 326
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentsEnumerated([I)V
    .registers 4

    .line 486
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentsRemoved([I)V
    .registers 4

    .line 509
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(BI)V
    .registers 5

    .line 296
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInteractionDetected()V
    .registers 3

    .line 470
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutCleared()V
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutPermanent()V
    .registers 3

    .line 438
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutTimed(J)V
    .registers 5

    .line 423
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSessionClosed()V
    .registers 3

    .line 563
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
