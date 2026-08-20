.class public final Lcom/android/server/biometrics/AuthSession;
.super Ljava/lang/Object;
.source "AuthSession.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;,
        Lcom/android/server/biometrics/AuthSession$SessionState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BiometricService/AuthSession"


# instance fields
.field public mAuthenticatedSensorId:I

.field public mAuthenticatedTimeMs:J

.field public mCancelled:Z

.field public final mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

.field public final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

.field public final mDebugEnabled:Z

.field public mErrorEscrow:I

.field public final mFingerprintSensorProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyStore:Landroid/security/KeyStore;

.field public mMultiSensorMode:I

.field public final mOpPackageName:Ljava/lang/String;

.field public final mOperationId:J

.field public final mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

.field public final mPromptInfo:Landroid/hardware/biometrics/PromptInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mRandom:Ljava/util/Random;

.field public final mRequestId:J

.field public final mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

.field public final mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSensors:[I

.field public mStartTimeMs:J

.field public mState:I

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mTokenEscrow:[B

.field public final mUserId:I

.field public mVendorCodeEscrow:I


# direct methods
.method public static synthetic $r8$lambda$3QmoXVKx8mz1zJJe0_PPgR8mlY4(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/biometrics/AuthSession;->lambda$pauseSensorIfSupported$4(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7FZ4YpjEgJYdr0hr3ZiNCt2UOUk(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/AuthSession;->lambda$startAllPreparedFingerprintSensors$1(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bwoIMl8e8OQYRgU0LoBUpbdFLNc(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/biometrics/AuthSession;->lambda$onAuthenticationSucceeded$3(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uoadpjSpHCnQuGjecw047tef1gE(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/AuthSession;->lambda$cancelAllSensors$2(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v4qUfgvvvjU95_FANrwTjIHuDFQ(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/server/biometrics/AuthSession;->lambda$startAllPreparedSensorsExceptFingerprint$0(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStore;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/SemAuthSessionExt;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            "Landroid/hardware/biometrics/IBiometricSysuiReceiver;",
            "Landroid/security/KeyStore;",
            "Ljava/util/Random;",
            "Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;",
            "Lcom/android/server/biometrics/PreAuthInfo;",
            "Landroid/os/IBinder;",
            "JJI",
            "Landroid/hardware/biometrics/IBiometricSensorReceiver;",
            "Landroid/hardware/biometrics/IBiometricServiceReceiver;",
            "Ljava/lang/String;",
            "Landroid/hardware/biometrics/PromptInfo;",
            "Z",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;",
            "Lcom/android/server/biometrics/SemAuthSessionExt;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p7

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 136
    iput v2, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v3, -0x1

    .line 141
    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating AuthSession with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/AuthSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    .line 178
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    move-object v3, p2

    .line 179
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object v3, p3

    .line 180
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-object v3, p4

    .line 181
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    move-object v3, p5

    .line 182
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    move-object v3, p6

    .line 183
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    .line 184
    iput-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    move-object v1, p8

    .line 185
    iput-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    move-wide/from16 v5, p9

    .line 186
    iput-wide v5, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    move-wide/from16 v5, p11

    .line 187
    iput-wide v5, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    move/from16 v1, p13

    .line 188
    iput v1, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    move-object/from16 v1, p14

    .line 189
    iput-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-object/from16 v1, p15

    .line 190
    iput-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    move-object/from16 v3, p16

    .line 191
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    move-object/from16 v3, p17

    .line 192
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    move/from16 v3, p18

    .line 193
    iput-boolean v3, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    move-object/from16 v3, p19

    .line 194
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mFingerprintSensorProperties:Ljava/util/List;

    .line 195
    iput-boolean v2, v0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    move-object/from16 v3, p20

    .line 198
    iput-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    .line 201
    :try_start_62
    invoke-interface/range {p15 .. p15}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_69} :catch_6a

    goto :goto_6f

    :catch_6a
    const-string v1, "Unable to link to death"

    .line 203
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_6f
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateUnknown()V

    return-void
.end method

.method public static getMultiSensorModeForNewSession(Ljava/util/Collection;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;)I"
        }
    .end annotation

    .line 1128
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 1129
    iget v3, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_1c

    move v1, v4

    goto :goto_7

    :cond_1c
    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    move v2, v4

    goto :goto_7

    :cond_21
    if-eqz v1, :cond_26

    if-eqz v2, :cond_26

    return v4

    :cond_26
    return v0
.end method

.method public static synthetic lambda$cancelAllSensors$2(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 1

    .line 448
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$onAuthenticationSucceeded$3(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2

    .line 758
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eq p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$pauseSensorIfSupported$4(ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2

    .line 823
    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$startAllPreparedFingerprintSensors$1(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2

    .line 429
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$startAllPreparedSensorsExceptFingerprint$0(Lcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;
    .registers 2

    .line 425
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allCookiesReceived()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1070
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->numSensorsWaitingForCookie()I

    move-result p0

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remaining cookies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public binderDied()V
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    invoke-interface {p0}, Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;->onClientDied()V

    return-void
.end method

.method public final cancelAllSensors()V
    .registers 2

    .line 448
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final cancelAllSensors(Ljava/util/function/Function;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BiometricService/AuthSession"

    .line 456
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 458
    :try_start_16
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling sensorId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCancelling(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_41} :catch_42

    goto :goto_a

    :catch_42
    const-string v2, "Unable to cancel authentication"

    .line 463
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_48
    return-void
.end method

.method public final containsCookie(I)Z
    .registers 3

    .line 1056
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1057
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 1182
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->destroy(I)V

    return-void
.end method

.method public destroy(I)V
    .registers 5

    .line 1187
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    const-string v1, "BiometricService/AuthSession"

    const-string v2, "Unable to unlink to death"

    .line 1189
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1191
    :goto_13
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/biometrics/SemAuthSessionExt;->destroy(II)V

    const/4 p1, 0x0

    .line 1192
    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

    return-void
.end method

.method public final getAcquiredMessageForSensor(III)Ljava/lang/String;
    .registers 5

    .line 1112
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/16 v0, 0x8

    if-eq p1, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 1117
    :cond_d
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1115
    :cond_14
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEligibleModalities()I
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result p0

    return p0
.end method

.method public getRequestId()J
    .registers 3

    .line 1080
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    return-wide v0
.end method

.method public getState()I
    .registers 1

    .line 1076
    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return p0
.end method

.method public goToInitialState()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v1, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x9

    .line 274
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    new-array v5, v2, [I

    .line 275
    iput-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 276
    iput v2, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    .line 292
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v9, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/biometrics/SemAuthSessionExt;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZILjava/lang/String;J)V

    goto :goto_43

    .line 302
    :cond_29
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 306
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Lcom/android/server/biometrics/BiometricSensor;)V

    const/4 v0, 0x1

    .line 311
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    :goto_43
    return-void

    .line 315
    :cond_44
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No authenticators requested"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasAuthenticated()Z
    .registers 2

    .line 869
    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isAllowDeviceCredential()Z
    .registers 1

    .line 1065
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result p0

    return p0
.end method

.method public isCheckedEnrollBiometricSession()Z
    .registers 2

    .line 763
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z
    .registers 3

    .line 410
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricSensor;->confirmationSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    .line 411
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/BiometricSensor;->confirmationAlwaysRequired(I)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public final isConfirmationRequiredByAnyEligibleSensor()Z
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 417
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public isCrypto()Z
    .registers 5

    .line 1052
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isTwoFactorBiometricSession()Z
    .registers 1

    .line 770
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final logOnDialogDismissed(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    sub-long v11, v1, v3

    .line 889
    new-instance v6, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v6}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v1

    iput-boolean v1, v6, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 891
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v5

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    iget-boolean v10, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    const/4 v13, 0x3

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v14, v1, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    iget v15, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    const/high16 v16, -0x40800000    # -1.0f

    .line 891
    invoke-virtual/range {v5 .. v16}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Landroid/hardware/biometrics/common/OperationContext;IIIZJIZIF)V

    goto :goto_69

    .line 903
    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    sub-long v12, v2, v4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_42

    const/16 v1, 0xd

    :goto_40
    move v14, v1

    goto :goto_4a

    :cond_42
    const/4 v2, 0x3

    if-ne v1, v2, :cond_48

    const/16 v1, 0xa

    goto :goto_40

    :cond_48
    const/4 v1, 0x0

    goto :goto_40

    .line 921
    :goto_4a
    new-instance v7, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v7}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v1

    iput-boolean v1, v7, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 923
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v6

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x2

    iget-boolean v11, v0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    const/4 v15, 0x0

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    move/from16 v16, v0

    .line 923
    invoke-virtual/range {v6 .. v16}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Landroid/hardware/biometrics/common/OperationContext;IIIZJIII)V

    :goto_69
    return-void
.end method

.method public onAcquired(III)V
    .registers 8

    .line 625
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "onAcquired after successful auth"

    .line 626
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 630
    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthSession;->getAcquiredMessageForSensor(III)Ljava/lang/String;

    move-result-object v0

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sensorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " acquiredInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_51

    .line 633
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_51

    .line 642
    :cond_41
    :try_start_41
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result p0

    invoke-virtual {v2, p0, p2, p3, v0}, Lcom/android/server/biometrics/SemAuthSessionExt;->onBiometricHelp(IIILjava/lang/String;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4a} :catch_4b

    goto :goto_51

    :catch_4b
    move-exception p0

    const-string p1, "Remote exception"

    .line 647
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_51
    :goto_51
    return-void
.end method

.method public onAuthenticationRejected(I)V
    .registers 6

    .line 776
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "onAuthenticationRejected after successful auth"

    .line 777
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 787
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2}, Lcom/android/server/biometrics/SemAuthSessionExt;->onBiometricAuthenticated(IZLjava/lang/String;)V

    .line 791
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x4

    .line 792
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 794
    :cond_1f
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_24} :catch_25

    goto :goto_2b

    :catch_25
    move-exception p0

    const-string p1, "RemoteException"

    .line 796
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return-void
.end method

.method public onAuthenticationSucceeded(IZ[BLandroid/os/Bundle;)V
    .registers 8

    .line 710
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "onAuthenticationSucceeded after successful auth"

    .line 711
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 714
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isCheckedEnrollBiometricSession()Z

    move-result v0

    if-nez v0, :cond_17

    .line 716
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    :cond_17
    if-eqz p2, :cond_1c

    .line 719
    iput-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    goto :goto_32

    :cond_1c
    if-eqz p3, :cond_32

    .line 722
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dropping authToken for non-strong biometric, id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    const/4 p2, 0x0

    if-eqz p4, :cond_52

    :try_start_35
    const-string p2, "KEY_IDENTIFIER_NAME"

    .line 735
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 736
    iget-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    const-string v0, "KEY_BIOMETRICS_ID"

    const/4 v2, 0x0

    .line 737
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 736
    invoke-virtual {p3, v0}, Lcom/android/server/biometrics/SemAuthSessionExt;->setAuthenticatedBiometricID(I)V

    .line 738
    iget-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    const-string v0, "KEY_CHALLENGE_TOKEN"

    .line 739
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p4

    .line 738
    invoke-virtual {p3, p4}, Lcom/android/server/biometrics/SemAuthSessionExt;->setChallengeToken([B)V

    .line 741
    :cond_52
    iget-object p3, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result p4

    const/4 v0, 0x1

    invoke-virtual {p3, p4, v0, p2}, Lcom/android/server/biometrics/SemAuthSessionExt;->onBiometricAuthenticated(IZLjava/lang/String;)V

    .line 746
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result p2

    if-nez p2, :cond_66

    const/4 p2, 0x7

    .line 749
    iput p2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_76

    .line 751
    :cond_66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    const/4 p2, 0x6

    .line 752
    iput p2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_6f} :catch_70

    goto :goto_76

    :catch_70
    move-exception p2

    const-string p3, "RemoteException"

    .line 755
    invoke-static {v1, p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    :goto_76
    new-instance p2, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public onAuthenticationTimedOut(IIII)V
    .registers 7

    .line 801
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result p2

    const-string v0, "BiometricService/AuthSession"

    if-eqz p2, :cond_f

    const-string/jumbo p0, "onAuthenticationTimedOut after successful auth"

    .line 802
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 811
    :cond_f
    :try_start_f
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    invoke-virtual {p2, v1, p3, p4}, Lcom/android/server/biometrics/SemAuthSessionExt;->onBiometricError(III)V

    .line 814
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    const/4 p1, 0x4

    .line 815
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception p0

    const-string p1, "RemoteException"

    .line 817
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public onCancelAuthSession(Z)Z
    .registers 7

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const-string/jumbo p0, "onCancelAuthSession after successful auth"

    .line 1011
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1015
    :cond_10
    iput-boolean v2, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    .line 1017
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_20

    const/4 v4, 0x2

    if-eq v0, v4, :cond_20

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1e

    goto :goto_20

    :cond_1e
    move v0, v3

    goto :goto_21

    :cond_20
    :goto_20
    move v0, v2

    .line 1021
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    if-eqz v0, :cond_29

    if-nez p1, :cond_29

    return v3

    .line 1031
    :cond_29
    :try_start_29
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result v0

    const/4 v4, 0x5

    .line 1031
    invoke-interface {p1, v0, v4, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1040
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemAuthSessionExt;->hideAuthenticationDialog()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_38} :catch_39

    return v2

    :catch_39
    move-exception p0

    const-string p1, "Remote exception"

    .line 1045
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public onClientDied()Z
    .registers 4

    const/4 v0, 0x1

    .line 846
    :try_start_1
    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    .line 857
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemAuthSessionExt;->hideAuthenticationDialog()V

    return v0

    :cond_f
    const/16 v1, 0xa

    .line 849
    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 850
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_18

    const/4 p0, 0x0

    return p0

    :catch_18
    move-exception p0

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onCookieReceived(I)V
    .registers 13

    .line 320
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_1b

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received cookie but already cancelled (ignoring): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 324
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo p0, "onCookieReceived after successful auth"

    .line 325
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 329
    :cond_28
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_4b

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCookieReceived: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    if-nez p1, :cond_4e

    return-void

    .line 336
    :cond_4e
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 337
    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCookieReturnedIfCookieMatches(I)V

    goto :goto_56

    .line 340
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->allCookiesReceived()Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    .line 349
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors()V

    .line 354
    iget p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_d2

    .line 357
    :try_start_7a
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequiredByAnyEligibleSensor()Z

    move-result v6

    .line 359
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p1, p1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    const/4 p1, 0x0

    .line 360
    :goto_8b
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_a8

    .line 365
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v2, v2, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    aput v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_8b

    .line 369
    :cond_a8
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p1, p1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-static {p1}, Lcom/android/server/biometrics/AuthSession;->getMultiSensorModeForNewSession(Ljava/util/Collection;)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    .line 385
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    .line 388
    invoke-virtual {p1}, Lcom/android/server/biometrics/PreAuthInfo;->shouldShowCredential()Z

    move-result v5

    iget v7, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v8, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    .line 385
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/biometrics/SemAuthSessionExt;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZILjava/lang/String;J)V

    const/4 p1, 0x2

    .line 396
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_ca} :catch_cb

    goto :goto_dc

    :catch_cb
    move-exception p0

    const-string p1, "Remote exception"

    .line 398
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_dc

    :cond_d2
    const/4 p1, 0x3

    .line 402
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_dc

    :cond_d6
    const-string/jumbo p0, "onCookieReceived: still waiting"

    .line 405
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_dc
    return-void
.end method

.method public onDeviceCredentialPressed()V
    .registers 2

    .line 830
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "BiometricService/AuthSession"

    const-string/jumbo v0, "onDeviceCredentialPressed after successful auth"

    .line 831
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 837
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    const/16 v0, 0x9

    .line 838
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void
.end method

.method public onDialogAnimatedIn()V
    .registers 3

    .line 668
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDialogAnimatedIn, unexpected state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricService/AuthSession"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    const/4 v0, 0x3

    .line 673
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void
.end method

.method public onDialogDismissed(I[B)V
    .registers 6

    .line 938
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->logOnDialogDismissed(I)V

    const-string v0, "BiometricService/AuthSession"

    packed-switch p1, :pswitch_data_ae

    goto/16 :goto_8b

    :pswitch_a
    if-eqz p2, :cond_12

    .line 943
    :try_start_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    goto :goto_3a

    :cond_12
    const-string p2, "credentialAttestation is null"

    .line 945
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 983
    :pswitch_18
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 984
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result p2

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 983
    invoke-interface {p1, p2, v1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto/16 :goto_9f

    .line 974
    :pswitch_27
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 975
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->getEligibleModalities()I

    move-result p2

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 974
    invoke-interface {p1, p2, v1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_9f

    .line 970
    :pswitch_34
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    goto :goto_9f

    .line 949
    :goto_3a
    :pswitch_3a
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz p2, :cond_59

    .line 950
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    move-result p2

    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAuthToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_59
    const-string/jumbo p2, "mTokenEscrow is null"

    .line 953
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_5f
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {p2}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result p2

    if-eqz p2, :cond_7d

    .line 958
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 959
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    .line 960
    invoke-virtual {v1}, Lcom/android/server/biometrics/SemAuthSessionExt;->getAuthenticatedBiometricID()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    .line 961
    invoke-virtual {v2}, Lcom/android/server/biometrics/SemAuthSessionExt;->getChallengeToken()[B

    move-result-object v2

    .line 958
    invoke-interface {p2, p1, v1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSemAuthenticationSucceeded(II[B)V

    goto :goto_9f

    .line 964
    :cond_7d
    iget-object p2, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 965
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result p1

    .line 964
    invoke-interface {p2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V

    goto :goto_9f

    :catchall_87
    move-exception p1

    goto :goto_aa

    :catch_89
    move-exception p1

    goto :goto_a3

    .line 991
    :goto_8b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled reason: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_9f} :catch_89
    .catchall {:try_start_c .. :try_end_9f} :catchall_87

    .line 998
    :goto_9f
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    goto :goto_a9

    :goto_a3
    :try_start_a3
    const-string p2, "Remote exception"

    .line 995
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_87

    goto :goto_9f

    :goto_a9
    return-void

    .line 998
    :goto_aa
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    .line 999
    throw p1

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_34
        :pswitch_27
        :pswitch_3a
        :pswitch_18
        :pswitch_18
        :pswitch_a
    .end packed-switch
.end method

.method public onErrorReceived(IIII)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onErrorReceived sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BiometricService/AuthSession"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthSession;->containsCookie(I)Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_45

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown/expired cookie: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 482
    :cond_45
    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v4, v4, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4d
    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricSensor;

    .line 483
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v10

    if-ne v10, v9, :cond_4d

    .line 484
    invoke-virtual {v8, v1, v2}, Lcom/android/server/biometrics/BiometricSensor;->goToStoppedStateIfCookieMatches(II)V

    goto :goto_4d

    .line 489
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_71

    const-string/jumbo v0, "onErrorReceived after successful auth (ignoring)"

    .line 490
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 494
    :cond_71
    iput v2, v0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    .line 495
    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    .line 497
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onErrorReceived: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget v4, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/16 v5, 0x9

    const/4 v8, 0x1

    if-eq v4, v8, :cond_117

    const/4 v10, 0x2

    if-eq v4, v10, :cond_e6

    if-eq v4, v9, :cond_e6

    const/4 v9, 0x4

    if-eq v4, v9, :cond_db

    if-eq v4, v5, :cond_c3

    const/16 v1, 0xa

    if-eq v4, v1, :cond_bd

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled error state, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_144

    .line 611
    :cond_bd
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemAuthSessionExt;->hideAuthenticationDialog()V

    return v8

    .line 603
    :cond_c3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Biometric canceled, ignoring from state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_144

    .line 591
    :cond_db
    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v4, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 596
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemAuthSessionExt;->hideAuthenticationDialog()V

    return v8

    :cond_e6
    const/4 v4, 0x7

    if-eq v2, v4, :cond_ee

    if-ne v2, v5, :cond_ec

    goto :goto_ee

    :cond_ec
    move v4, v7

    goto :goto_ef

    :cond_ee
    :goto_ee
    move v4, v8

    .line 551
    :goto_ef
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v6

    if-eqz v6, :cond_ff

    if-eqz v4, :cond_ff

    .line 553
    iput v5, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 558
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemAuthSessionExt;->onBiometricError(III)V

    goto :goto_144

    :cond_ff
    const/4 v4, 0x5

    if-ne v2, v4, :cond_10d

    .line 566
    iget-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    invoke-virtual {v4}, Lcom/android/server/biometrics/SemAuthSessionExt;->hideAuthenticationDialog()V

    .line 572
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    return v8

    :cond_10d
    const/16 v4, 0x8

    .line 575
    iput v4, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 580
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemAuthSessionExt;->onBiometricError(III)V

    goto :goto_144

    .line 505
    :cond_117
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthSession;->isAllowDeviceCredential()Z

    move-result v4

    if-eqz v4, :cond_145

    .line 506
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 507
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    .line 509
    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->removeBiometricBits(I)I

    move-result v1

    .line 510
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 512
    iput v5, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    .line 513
    iput v7, v0, Lcom/android/server/biometrics/AuthSession;->mMultiSensorMode:I

    new-array v10, v7, [I

    .line 514
    iput-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    .line 530
    iget-object v8, v0, Lcom/android/server/biometrics/AuthSession;->mSemAuthSessionExt:Lcom/android/server/biometrics/SemAuthSessionExt;

    iget-object v9, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget v13, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v14, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v0, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    move-wide v15, v0

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/biometrics/SemAuthSessionExt;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZILjava/lang/String;J)V

    :goto_144
    return v7

    .line 541
    :cond_145
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    return v8
.end method

.method public onSemSwitchingSensorPressed(I)V
    .registers 8

    .line 1156
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 1158
    :try_start_14
    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    if-ne v2, p1, :cond_1c

    .line 1159
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Lcom/android/server/biometrics/BiometricSensor;)V

    goto :goto_2e

    .line 1160
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v2

    if-eqz v2, :cond_2e

    .line 1161
    iget-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/biometrics/BiometricSensor;->goToStateCancelling(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 1162
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->goToStateUnknown()V

    :cond_2e
    :goto_2e
    const/4 v2, 0x5

    .line 1164
    iput v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_31} :catch_32

    goto :goto_8

    :catch_32
    move-exception v2

    .line 1166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchingSensorPressed, sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BiometricService/AuthSession"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_4b
    return-void
.end method

.method public onSystemEvent(I)V
    .registers 4

    .line 652
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "onSystemEvent after successful auth"

    .line 653
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 656
    :cond_f
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isReceiveSystemEvents()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 661
    :cond_18
    :try_start_18
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    move-exception p0

    const-string p1, "RemoteException"

    .line 663
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public onTryAgainPressed()V
    .registers 4

    .line 680
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticated()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_f

    const-string/jumbo p0, "onTryAgainPressed after successful auth"

    .line 681
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 685
    :cond_f
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2b

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTryAgainPressed, state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

    if-nez v0, :cond_36

    const-string/jumbo v0, "onTryAgainPressed: current sensor is null"

    .line 693
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 695
    :cond_36
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Lcom/android/server/biometrics/BiometricSensor;)V

    :goto_39
    const/4 v0, 0x5

    .line 701
    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3c} :catch_3d

    goto :goto_52

    :catch_3d
    move-exception p0

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return-void
.end method

.method public final pauseSensorIfSupported(I)Z
    .registers 4

    .line 822
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 823
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public semContainCookie(I)Z
    .registers 3

    .line 1196
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1197
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final sensorIdToModality(I)I
    .registers 4

    .line 1102
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1103
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v1, :cond_8

    .line 1104
    iget p0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    return p0

    .line 1107
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensor: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService/AuthSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setErrorValue(II)V
    .registers 3

    .line 1205
    iput p1, p0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    .line 1206
    iput p2, p0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    return-void
.end method

.method public final setSensorsToStateUnknown()V
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 232
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->goToStateUnknown()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final setSensorsToStateWaitingForCookie(Lcom/android/server/biometrics/BiometricSensor;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v11, v0, 0x1

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v2

    .line 262
    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v4, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v6, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v7, p0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v8, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 264
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v12

    move-object v1, p1

    .line 262
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/biometrics/BiometricSensor;->goToStateWaitingForCookie(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    .line 265
    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

    return-void
.end method

.method public final setSensorsToStateWaitingForCookie(Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 238
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v1

    if-eqz p1, :cond_42

    const/4 v3, 0x5

    if-eq v1, v3, :cond_42

    const/4 v3, 0x4

    if-eq v1, v3, :cond_42

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip retry because sensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 246
    :cond_42
    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v12, v1, 0x1

    .line 247
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v3

    .line 252
    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v5, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v7, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v8, p0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v9, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 254
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v13

    .line 252
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/biometrics/BiometricSensor;->goToStateWaitingForCookie(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    goto :goto_8

    :cond_67
    return-void
.end method

.method public final startAllPreparedFingerprintSensors()V
    .registers 2

    .line 429
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final startAllPreparedSensors()V
    .registers 5

    .line 1172
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 1174
    :try_start_14
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->startSensor()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    :catch_18
    move-exception v1

    .line 1176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start prepared client, sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_30
    return-void
.end method

.method public final startAllPreparedSensors(Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 433
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 434
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 439
    :try_start_20
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->startSensor()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_8

    :catch_24
    move-exception v1

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start prepared client, sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_3c
    return-void
.end method

.method public final startAllPreparedSensorsExceptFingerprint()V
    .registers 2

    .line 425
    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final statsModality()I
    .registers 4

    .line 1086
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 1087
    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1d

    or-int/lit8 v0, v0, 0x1

    :cond_1d
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_23

    or-int/lit8 v0, v0, 0x2

    :cond_23
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    or-int/lit8 v0, v0, 0x4

    goto :goto_9

    :cond_2a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCrypto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->isCrypto()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PreAuthInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
