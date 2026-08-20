.class public Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;
.super Landroid/hardware/biometrics/face/ISessionCallback$Stub;
.source "Sensor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/aidl/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HalSessionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;
    }
.end annotation


# instance fields
.field public final mCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

.field public final mSensorId:I

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$15-X-jQ9hfMPGcu-QdU9V5tFHxQ(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onChallengeRevoked$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$9yONLdMenSLn3RFNWYXGyE8Vwmo(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onChallengeGenerated$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$GMCn1rTP2wH-Ycx7mbEVQdHzHmk(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;IIB)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onError$4(IIB)V

    return-void
.end method

.method public static synthetic $r8$lambda$QGEd94dst3AhI0qx-ItHIAYyEeM(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onInteractionDetected$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$YF-St0pw_zJhMhcg3eKMRJiz6qY(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onEnrollmentProgress$5(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$d0oaYNCEQfLCwIFTXN8hrk8_yMk(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onEnrollmentsEnumerated$12([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dH0FrdJoiwk8AzURiL7FCzXQ59I(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onEnrollmentsRemoved$15([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iBwDDOMbluE2PfzpWTzOfsvuZcA(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;Landroid/hardware/biometrics/face/EnrollmentFrame;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onEnrollmentFrame$3(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m5stc0FLFdUmpe7pthfXxdwRoeg(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onAuthenticatorIdInvalidated$17(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$q0WsqnyDhInFmPHTSU_VTFT-aGU(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onFeaturesRetrieved$13([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7Mkl6Fi5BBzFuHvYfOhJmrFYUg(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onAuthenticatorIdRetrieved$16(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$vVoZXIPatBsYrc9mhdH4SLMF1ys(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onFeatureSet$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$w7WuZONZp-VSb0s1M3jeK_ywS9g(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onAuthenticationFailed$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$xnBGxFJNNG-sGh9lw34fSUMco_s(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;Landroid/hardware/biometrics/face/AuthenticationFrame;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onAuthenticationFrame$2(Landroid/hardware/biometrics/face/AuthenticationFrame;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yTMiDlNoZmfHdVj6FVV0MbGJGb4(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->lambda$onAuthenticationSucceeded$6(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;)V
    .registers 10

    .line 141
    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    .line 144
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    .line 146
    iput p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    .line 147
    iput p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mUserId:I

    .line 148
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 149
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 150
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;

    return-void
.end method

.method private synthetic lambda$onAuthenticationFailed$7()V
    .registers 6

    .line 370
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 371
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_26

    .line 372
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationFailed for non-authentication consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 378
    :cond_26
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onAuthenticationFailed()V

    .line 381
    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 383
    new-instance v1, Landroid/hardware/face/Face;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v2, p0

    const-string p0, ""

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2, v3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    const/4 p0, 0x0

    .line 384
    invoke-interface {v0, v1, v4, p0}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationFrame$2(Landroid/hardware/biometrics/face/AuthenticationFrame;I)V
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 209
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    if-nez v1, :cond_26

    .line 210
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticationFrame for incompatible client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    if-nez p1, :cond_43

    .line 216
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received null authentication frame for client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_43
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p0

    iget-object v1, p1, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    iget v1, v1, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    invoke-virtual {p0, p2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onAcquired(II)V

    .line 225
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 226
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)Landroid/hardware/face/FaceAuthenticationFrame;

    move-result-object p0

    .line 225
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationSucceeded$6(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 7

    .line 337
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 338
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_26

    .line 339
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticationSucceeded for non-authentication consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 345
    :cond_26
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "onAuthenticationSucceeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onAuthenticationSucceeded()V

    .line 349
    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 351
    new-instance v1, Landroid/hardware/face/Face;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v2, p0

    const-string p0, ""

    invoke-direct {v1, p0, p1, v2, v3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 352
    invoke-static {p2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object p0

    .line 353
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    array-length p2, p0

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, p2, :cond_5a

    aget-byte v3, p0, v2

    .line 355
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_5a
    const/4 p0, 0x1

    .line 357
    invoke-interface {v0, v1, p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$onAuthenticatorIdInvalidated$17(J)V
    .registers 5

    .line 585
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 586
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    if-nez v1, :cond_26

    .line 587
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticatorIdInvalidated for wrong consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 587
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 592
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    .line 593
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/InvalidationClient;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method private synthetic lambda$onAuthenticatorIdRetrieved$16(J)V
    .registers 5

    .line 568
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 569
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;

    if-nez v1, :cond_26

    .line 570
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticatorIdRetrieved for wrong consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 570
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 575
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;

    .line 577
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method private synthetic lambda$onChallengeGenerated$0(J)V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 168
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    if-nez v1, :cond_26

    .line 169
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onChallengeGenerated for wrong client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 174
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    .line 176
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mUserId:I

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->onChallengeGenerated(IIJ)V

    return-void
.end method

.method private synthetic lambda$onChallengeRevoked$1(J)V
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 185
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;

    if-nez v1, :cond_26

    .line 186
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onChallengeRevoked for wrong client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 191
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;

    .line 193
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mUserId:I

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->onChallengeRevoked(IIJ)V

    return-void
.end method

.method private synthetic lambda$onEnrollmentFrame$3(Landroid/hardware/biometrics/face/EnrollmentFrame;)V
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 244
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    if-nez v1, :cond_26

    .line 245
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnrollmentFrame for incompatible client: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    if-nez p1, :cond_43

    .line 250
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received null enrollment frame for client: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_43
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 255
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;

    move-result-object p0

    .line 254
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$5(II)V
    .registers 8

    if-nez p1, :cond_13

    .line 306
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->removeSavedFaceIdIfCancelled([I)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 312
    :cond_13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 313
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    if-nez v1, :cond_39

    .line 314
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnrollmentProgress for non-enroll client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 319
    :cond_39
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 320
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {v2, v3, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 322
    new-instance v2, Landroid/hardware/face/Face;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v3, p0

    invoke-direct {v2, v1, p2, v3, v4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 324
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 327
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onEnrollResult(II)V

    .line 330
    invoke-virtual {v0, v2, p1}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private synthetic lambda$onEnrollmentsEnumerated$12([I)V
    .registers 10

    .line 468
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollmentsEnumerated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_13

    const-string/jumbo v2, "null"

    goto :goto_18

    :cond_13
    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_30

    .line 471
    array-length v2, p1

    if-ne v2, v0, :cond_30

    aget v2, p1, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_30

    move v2, v0

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    if-nez v2, :cond_3a

    .line 475
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->doTemplateSyncForUser([I)V

    .line 478
    :cond_3a
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v3

    .line 479
    instance-of v4, v3, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez v4, :cond_60

    .line 480
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onEnrollmentsEnumerated for non-enumerate consumer: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-static {v3}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_60
    if-eqz v2, :cond_68

    .line 487
    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceInternalCleanupClient;

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceInternalCleanupClient;->onEnumerationError()V

    return-void

    .line 491
    :cond_68
    check-cast v3, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 493
    array-length v2, p1

    if-lez v2, :cond_85

    .line 494
    :goto_6d
    array-length v2, p1

    if-ge v1, v2, :cond_89

    .line 495
    new-instance v2, Landroid/hardware/face/Face;

    aget v4, p1, v1

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v5, v5

    const-string v7, ""

    invoke-direct {v2, v7, v4, v5, v6}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 496
    array-length v4, p1

    sub-int/2addr v4, v1

    sub-int/2addr v4, v0

    invoke-interface {v3, v2, v4}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_85
    const/4 p0, 0x0

    .line 499
    invoke-interface {v3, p0, v1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :cond_89
    return-void
.end method

.method private synthetic lambda$onEnrollmentsRemoved$15([I)V
    .registers 9

    .line 540
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 541
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    if-nez v1, :cond_26

    .line 542
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRemoved for non-removal consumer: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 542
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 547
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 548
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_67

    .line 549
    :goto_2c
    array-length v1, p1

    if-ge v2, v1, :cond_6b

    .line 550
    new-instance v1, Landroid/hardware/face/Face;

    aget v3, p1, v2

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v4, v4

    const-string v6, ""

    invoke-direct {v1, v6, v3, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 551
    array-length v3, p1

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v1, v3}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 554
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEnrollmentsRemoved : faceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    aget v3, p1, v2

    invoke-virtual {v1, v6, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onRemovedExt(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_67
    const/4 p0, 0x0

    .line 559
    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :cond_6b
    return-void
.end method

.method private synthetic lambda$onError$4(IIB)V
    .registers 13

    .line 272
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError, client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v4, ")"

    const-string v5, "("

    const-string v6, ""

    if-eqz v3, :cond_43

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/face/FaceManager;->getErrorName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_44

    :cond_43
    move-object v7, v6

    :goto_44
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", vendorCode: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_67

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/hardware/face/FaceManager;->getErrorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_67
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_91

    .line 278
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onError for non-error consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 284
    :cond_91
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onErrorExt(II)V

    .line 287
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 288
    invoke-static {p3}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkError(B)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_a9

    .line 291
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;->onHardwareUnavailable()V

    .line 295
    :cond_a9
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onError(II)V

    return-void
.end method

.method private synthetic lambda$onFeatureSet$14()V
    .registers 4

    .line 524
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 525
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    if-nez v1, :cond_26

    .line 526
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFeatureSet for non-set consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 531
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    const/4 p0, 0x1

    .line 532
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->onFeatureSet(Z)V

    return-void
.end method

.method private synthetic lambda$onFeaturesRetrieved$13([B)V
    .registers 4

    .line 508
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 509
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    if-nez v1, :cond_26

    .line 510
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFeaturesRetrieved for non-get feature consumer: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 514
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    const/4 p0, 0x1

    .line 515
    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;->onFeatureGet(Z[B)V

    return-void
.end method

.method private synthetic lambda$onInteractionDetected$11()V
    .registers 4

    .line 452
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 453
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    if-nez v1, :cond_26

    .line 454
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInteractionDetected for wrong client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 459
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    .line 460
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->onInteractionDetected()V

    return-void
.end method

.method private synthetic lambda$onLockoutCleared$10()V
    .registers 4

    .line 434
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 435
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;

    if-nez v1, :cond_1e

    .line 436
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onLockoutCleared outside of resetLockout by HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mUserId:I

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    goto :goto_2b

    .line 440
    :cond_1e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onLockoutCleared after resetLockout"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;

    .line 443
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->onLockoutCleared()V

    :goto_2b
    return-void
.end method

.method private synthetic lambda$onLockoutPermanent$9()V
    .registers 4

    .line 415
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 416
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    if-nez v1, :cond_26

    .line 417
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLockoutPermanent for non-lockout consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 422
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 423
    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutPermanent()V

    return-void
.end method

.method private synthetic lambda$onLockoutTimed$8(J)V
    .registers 5

    .line 396
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 397
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    if-nez v1, :cond_26

    .line 398
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onLockoutTimed for non-lockout consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 403
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 404
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutTimed(J)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "74b0b7cb149ee205b12cd2254d216725c6e5429c"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public onAuthenticationFailed()V
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onPreAuthenticationFailed()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 369
    :cond_13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V
    .registers 6

    .line 201
    iget-object v0, p1, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    iget-byte v0, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v0

    .line 202
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    iget v2, v2, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onPreAcquired(IIZ)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    return-void

    .line 207
    :cond_19
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;Landroid/hardware/biometrics/face/AuthenticationFrame;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 5

    .line 336
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;ILandroid/hardware/keymaster/HardwareAuthToken;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticatorIdInvalidated(J)V
    .registers 5

    .line 583
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onAuthenticatorIdInvalidated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticatorIdRetrieved(J)V
    .registers 6

    .line 566
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticatorIdRetrieved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v2, :cond_16

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_18

    :cond_16
    const-string v2, ""

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChallengeGenerated(J)V
    .registers 6

    .line 165
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChallengeGenerated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChallengeRevoked(J)V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onChallengeRevoked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V
    .registers 6

    .line 234
    iget-object v0, p1, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    iget-byte v0, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v0

    .line 237
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    iget v2, v2, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onPreAcquired(IIZ)I

    move-result v0

    if-ne v0, v3, :cond_18

    return-void

    .line 242
    :cond_18
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentProgress(II)V
    .registers 6

    .line 302
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollmentProgress id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentsEnumerated([I)V
    .registers 4

    .line 466
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentsRemoved([I)V
    .registers 5

    .line 538
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollmentsRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(BI)V
    .registers 6

    .line 263
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkError(B)I

    move-result v0

    .line 266
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->onPreError(II)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 271
    :cond_f
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;IIB)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFeatureSet(B)V
    .registers 3

    .line 522
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "onFeatureSet"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFeaturesRetrieved([B)V
    .registers 4

    .line 506
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onFeaturesRetrieved"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInteractionDetected()V
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onInteractionDetected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutCleared()V
    .registers 2

    .line 430
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "onLockoutCleared() skip"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLockoutPermanent()V
    .registers 2

    .line 411
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "onLockoutPermanent() skip"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLockoutTimed(J)V
    .registers 3

    .line 392
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo p1, "onLockoutTimed() skip"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSessionClosed()V
    .registers 3

    .line 599
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
