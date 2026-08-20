.class public abstract Lcom/android/server/biometrics/BiometricSensor;
.super Ljava/lang/Object;
.source "BiometricSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricSensor$SensorState;
    }
.end annotation


# static fields
.field public static final STATE_AUTHENTICATING:I = 0x3

.field public static final STATE_CANCELING:I = 0x4

.field public static final STATE_COOKIE_RETURNED:I = 0x2

.field public static final STATE_STOPPED:I = 0x5

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final STATE_WAITING_FOR_COOKIE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BiometricService/Sensor"


# instance fields
.field public final id:I

.field public final impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

.field public final mContext:Landroid/content/Context;

.field public mCookie:I

.field public mError:I

.field public mIsUpdatedStrengthByDeviceConfig:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mOemSecureLevel:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSensorState:I

.field public mUpdatedStrength:I
    .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
    .end annotation
.end field

.field public final modality:I

.field public oemStrength:I
    .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .registers 7
    .param p4    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mOemSecureLevel:I

    .line 102
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mContext:Landroid/content/Context;

    .line 103
    iput p2, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    .line 104
    iput p3, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    .line 105
    iput p4, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 106
    iput-object p5, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 108
    iput p4, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 109
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricSensor;->goToStateUnknown()V

    return-void
.end method


# virtual methods
.method public abstract confirmationAlwaysRequired(I)Z
.end method

.method public abstract confirmationSupported()Z
.end method

.method public getCookie()I
    .registers 1

    .line 180
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    return p0
.end method

.method public getCurrentStrength()I
    .registers 2
    .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricSensor;->updateOemStrengthUsingSecurityLevelIfNotCached()V

    .line 172
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getSensorState()I
    .registers 1

    .line 176
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    return p0
.end method

.method public goToStateCancelling(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 149
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 150
    iput v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    :cond_c
    return-void
.end method

.method public goToStateCookieReturnedIfCookieMatches(I)V
    .registers 4

    .line 130
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-ne p1, v0, :cond_27

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sensor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") matched cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricService/Sensor"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 132
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    :cond_27
    return-void
.end method

.method public goToStateUnknown()V
    .registers 2

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    .line 114
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 115
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mError:I

    return-void
.end method

.method public goToStateWaitingForCookie(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v11, p10

    .line 122
    iput v11, v0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    .line 123
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    move v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Landroid/hardware/biometrics/IBiometricAuthenticator;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    const/4 v1, 0x1

    .line 126
    iput v1, v0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    return-void
.end method

.method public goToStoppedStateIfCookieMatches(II)V
    .registers 4

    .line 155
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-ne p1, v0, :cond_26

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sensor("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") now in STATE_STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricService/Sensor"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput p2, p0, Lcom/android/server/biometrics/BiometricSensor;->mError:I

    const/4 p1, 0x5

    .line 158
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    :cond_26
    return-void
.end method

.method public startSensor()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-nez v0, :cond_5

    return-void

    .line 142
    :cond_5
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v1, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator;->startPreparedClient(I)V

    const/4 v0, 0x3

    .line 143
    iput v0, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), oemStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updatedStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modality "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateOemStrengthUsingSecurityLevelIfNotCached()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "BiometricService/Sensor"

    .line 212
    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mOemSecureLevel:I

    if-eqz v1, :cond_7

    return-void

    .line 216
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->semGetSecurityLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mOemSecureLevel:I

    if-nez v1, :cond_30

    const-string v1, "UpdateOemStrength: invalid security level"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v1

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateOemStrength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_30
    iget v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mOemSecureLevel:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->oemStrengthToAuthenticatorStrength(I)I

    move-result v1

    .line 226
    iget v2, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    if-eq v1, v2, :cond_7a

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateOemStrength: Before("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricSensor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    iput v1, p0, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 229
    iget-boolean v4, p0, Lcom/android/server/biometrics/BiometricSensor;->mIsUpdatedStrengthByDeviceConfig:Z

    if-nez v4, :cond_5c

    .line 230
    iput v1, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 232
    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", After("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricSensor;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    return-void
.end method

.method public updateStrength(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStrength: Before("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    iput p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mUpdatedStrength:I

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " After("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricService/Sensor"

    .line 192
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/android/server/biometrics/BiometricSensor;->mIsUpdatedStrengthByDeviceConfig:Z

    return-void
.end method
